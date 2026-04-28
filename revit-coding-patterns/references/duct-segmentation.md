# 风管分段 API 踩坑详解（Revit 2026）

> 本文档从 `revit-coding-patterns` SKILL.md 拆出，收录风管分段相关的所有高频坑和解决方案。
>
> **通用 Revit/WPF 问题** → `revit-coding-patterns` SKILL.md
> **Nice3point 专属** → `nice3point-patterns.md`
> **Scotec/FmRoky 专属** → `scotec-patterns.md`

---

## 1) `MEPSystem.GetDucts()` 不存在

有些资料/旧代码会写 `mepSystem.GetDucts()`，在 Revit 2026 编译直接 `CS1061`。稳定方案是：

```csharp
var systemId = entryDuct.MEPSystem?.Id;
if (systemId == null) return new List<Duct> { entryDuct };

var ducts = new FilteredElementCollector(doc)
    .OfClass(typeof(Duct))
    .Cast<Duct>()
    .Where(d => d.MEPSystem?.Id == systemId)
    .ToList();
```

---

## 2) 不要写 `DuctType.Flexible`

`Duct` 和 `FlexDuct` 是不同类。`DuctType.Flexible` 这种枚举判断不可用，会导致编译/语义错误。需要硬风管时，直接按 `e is Duct` 过滤即可（FlexDuct 不会进来）。

---

## 3) 分段优先 `MechanicalUtils.BreakCurve`，别"删除原管+重建多段"

删除重建会丢连接上下文，风险高。推荐流程：
1. `LocationCurve` 取起点/方向/总长
2. 循环 `MechanicalUtils.BreakCurve(doc, ductId, breakPoint)`
3. 每次 break 后更新"当前待打断段 id"继续打断
4. 段间连接优先 `doc.Create.NewUnionFitting(conn1, conn2)`，失败再 `NewTransitionFitting`
5. 连接件失败按"局部跳过+汇总"，不要中断整个批次

---

## 4) `The given point is not on the duct curve` 的根因与修复

这个错误高发于"多次连续分段"时：
- 切点按**原始母线**累加计算；
- 但 `BreakCurve` 后当前段可能不是你以为的那一段；
- 下一次把旧切点喂给错误的 ductId，就会报 *point is not on the duct curve*。

稳妥做法：
1. 每次打断前，先验证切点是否在当前段曲线上（`curve.Project(point)` + 距离容差判断）。
2. 若不在，改为在候选段里寻找"包含该切点"的那一段再调用 `BreakCurve`。
3. 失败时记录为局部失败并继续，不要让整批中断。
4. 连续分段时不要一直用"原始起点 + i*段长"直接喂当前段；应维护 `accumulatedDistance`，每次基于**当前段曲线**重算相对切点：
   - `relative = targetBreakOnOriginal - accumulatedDistance`
   - `breakPoint = currentStart + currentDir * relative`
   - `project = currentCurve.Project(breakPoint)`，若 `project == null` 或 `project.Distance > tolerance`（如 0.01ft）则跳过该根并记原因。
   - **关键：`accumulatedDistance` 必须累加"本次已消费距离（relative）"，不能累加当前段总长。** 累加总长会导致下一次 relative 变负或越界，出现"段外/不在曲线"错误。
5. `projectResult.Parameter` 不是所有曲线都等价于"英尺长度坐标"。做"段内判定"时优先用 `ComputeNormalizedParameter`（0~1）或端点距离判断，不要直接拿 `Parameter` 和 `curve.Length` 比较。

简化伪码：
```csharp
double accumulated = 0;
ElementId currentId = duct.Id;
for (int i = 0; i < segmentCount - 1; i++)
{
    var current = (Duct)doc.GetElement(currentId);
    var curve = ((LocationCurve)current.Location).Curve;
    double target = (i + 1) * segmentLength;
    double relative = target - accumulated;

    // 相对距离必须落在当前段内部
    if (relative <= tol || relative >= curve.Length - tol)
        return SegmentResult.Skipped;

    XYZ p0 = curve.GetEndPoint(0);
    XYZ dir = (curve.GetEndPoint(1) - p0).Normalize();
    XYZ breakPoint = p0 + dir * relative;

    var proj = curve.Project(breakPoint);
    if (proj == null || proj.Distance > 0.01)
        return SegmentResult.Skipped;

    // 可选：做归一化参数校验（0~1）
    if (!curve.ComputeNormalizedParameter(proj.Parameter, out var t) || t <= 0.0 + 1e-6 || t >= 1.0 - 1e-6)
        return SegmentResult.Skipped;

    var nextId = MechanicalUtils.BreakCurve(doc, currentId, breakPoint);
    if (nextId == ElementId.InvalidElementId)
        return SegmentResult.Failed;

    accumulated += relative; // ✅ 不是 curve.Length
    currentId = nextId;
}
```

---

## 5) 打断点偏离曲线：投影修正而非放弃整根管（2026-04-18 实战）

连续分段时，按方向向量算出的 `breakPoint` 可能因浮点累积误差偏离当前段曲线（实测偏离 ~3mm / 0.0098ft）。
旧逻辑直接 `return Skipped`，导致整根风管剩余段全部丢失（用户反馈"分完少了一段"）。

**正确做法：偏离时用 `projectResult.XYZPoint` 修正，不放弃：**

```csharp
var breakPoint = currentStartPoint + currentDirection * effectiveBreakOffset;
var projectResult = currentCurve.Project(breakPoint);
if (projectResult == null)
{
    // 无法投影：若已创建段则返回成功（保留已完成工作），否则跳过
    if (segmentCreatedCount > 0) return SegmentResult.Success;
    failReason = "无法投影打断点";
    return SegmentResult.Skipped;
}

// 偏离时用曲线上最近点修正，而非放弃整根管
double distanceToCurve = projectResult.Distance;
if (distanceToCurve > tolerance)
{
    breakPoint = projectResult.XYZPoint; // 关键修正
}
```

**配套防御 — 统计口径一致性：**
while 循环内部的 `return Skipped` 路径（无法投影、参数越界等）都要加：
```csharp
if (segmentCreatedCount > 0) return SegmentResult.Success;
```
否则报告会出现"成功分段 0 根"与"成功创建段数 N 段"的矛盾。

---

## 6) `SubTransaction` 不能直接挂在 `TransactionGroup` 下

Revit 事务层级规则：
- ✅ `Transaction` 内可以开 `SubTransaction`
- ❌ `TransactionGroup` 里不能直接开 `SubTransaction`

否则运行时报：
`A sub-transaction can only be active inside an open Transaction`

正确结构：
```csharp
using var tx = new Transaction(doc, "Batch Duct Segment");
tx.Start();

foreach (var duct in ducts)
{
    using var sub = new SubTransaction(doc);
    sub.Start();
    // 单根处理
    sub.Commit(); // 或 RollBack
}

tx.Commit();
```

---

## 7) `Connector.AllRefs` 遍历类型与取 Id 的正确写法

做"连通路径 BFS"时，`Connector.AllRefs` 返回的是 `ConnectorSet`，元素类型是 `Connector`：

- ❌ 不存在 `ElementRef`
- ❌ `Connector` 没有 `ElementId` 属性
- ✅ 应通过 `refConn.Owner?.Id` 取关联元素 Id

```csharp
foreach (Connector refConn in conn.AllRefs)
{
    var refElemId = refConn.Owner?.Id;
    if (refElemId == null || visited.Contains(refElemId))
        continue;

    var refElem = doc.GetElement(refElemId);
    // ... 继续拓扑遍历
}
```

这条能直接避免两类编译错误：
- `CS0246: ElementRef not found`
- `CS1061: Connector does not contain ElementId`

---

## 8) "全系统分段只处理一根"的根因：BFS 没有把 Fitting 当作过桥节点

常见误写是：只在 `refElem is Duct` 时入队，导致遍历在弯头/三通处断开。看起来选了"全系统"，实际只处理入口那根。

```csharp
// ❌ 错误：只把 Duct 入队，拓扑在 fitting 处断开
if (refElem is Duct refDuct)
{
    visited.Add(refElemId);
    queue.Enqueue(refElemId);
}

// ✅ 正确：Duct 作为处理对象；FamilyInstance(管件)作为过桥节点也要入队继续扩展
if (refElem is Duct)
{
    // 处理对象
    result.Add((Duct)refElem);
    visited.Add(refElemId);
    queue.Enqueue(refElemId);
}
else if (refElem is FamilyInstance)
{
    // 过桥节点：不切分，但必须入队才能穿过弯头/三通继续找到后续直管
    visited.Add(refElemId);
    queue.Enqueue(refElemId);
}
```

经验规则：
- **处理集合**只放 `Duct`
- **遍历队列**放 `Duct + Fitting`（至少 `FamilyInstance`）
- 否则"全系统"一定会漏后续支路/主干

---

## 9) 外层事务提交条件不能只看 successCount（2026-04-18 实战）

症状：弹窗显示"成功创建段数/切刀数 > 0"，但模型里最终没保留任何分段。

根因：外层 `Transaction` 的提交条件只看 `successCount`，在"部分成功 + 部分失败"场景会误判为 `RollBack()`，把已完成的切分也回滚掉。

```csharp
// ❌ 易出错：仅按 successCount 判定提交
if (successCount > 0 || (skippedCount > 0 && failedCount == 0))
    outerTx.Commit();
else
    outerTx.RollBack();

// ✅ 正确：优先按"是否产生有效变更"判定提交
bool hasEffectiveChanges = segmentCreatedCount > 0 || totalCutsPerformed > 0;
if (hasEffectiveChanges)
    outerTx.Commit();
else if (skippedCount > 0 && failedCount == 0)
    outerTx.Commit();
else
    outerTx.RollBack();
```

配套建议：汇总报告追加一行"事务已提交/已回滚"，避免"统计值显示有产出但实际被回滚"的误导。

---

## 10) 主路径连续分段 V1 的两个坑：过桥穿透 + 跳过去重（2026-04-19 实战）

症状：
- 弹窗显示"主路径连续分段=是"，但实际只切了 1 刀。
- 同时出现"跳过总数"和"支路跳过"口径冲突（看起来像重复计数）。

根因 A（只切 1 刀）：
- 主路径 DFS 只收集 `refElem is Duct`，没穿透 `FamilyInstance`（弯头/三通/变径）。
- 入口 duct 后如果先连到 fitting，再到下一根 duct，路径会在 fitting 处断开。

修复 A：
- 在 DFS 邻接扩展里支持两类邻接：
  1) `Duct`：直接收集；
  2) `FamilyInstance`：通过其 `MEPModel.ConnectorManager` 再遍历 `AllRefs`，收集"对端 Duct"。
- 经验：**路径遍历集合**允许 `Duct + FamilyInstance`，**候选路径结果**只保留 `Duct`。

根因 B（统计冲突）：
- `skippedCount` 先用 `preSkippedReasons.Sum()` 初始化，再叠加 `branchDucts.Count`；
- 如果支路已在 pre-check 被计入，汇总会重复。

修复 B：
- `skippedCount` 从 0 起算；
- 先把 `preSkippedReasons` 合并到 `failureReasons`，再单独累加一次预跳过；
- 支路跳过只在 EntireSystem 主路径分支里累加一次，并用独立 reason（如 `支路跳过（V1仅处理主路径）`）。

验收口径：
- EntireSystem 场景下，切刀数不再固定为 1（可跨 fitting 连续推进）；
- 汇总中"跳过总数 = 规则跳过 + 支路跳过"，不重复。

---

## 11) 严格定长 vs 连接件插入：先定规则再编码

用户若要求"输入 1200mm，分完每段就是 1200mm"，必须先明确长度口径：

1. **净直管长度优先（推荐）**
   - 开启严格定长时，断点按直管净长度计算。
   - 插入连接件会吞长度；若无可靠补偿参数，优先保证直管定长，连接件可局部跳过并记录说明。

2. **含管件总节距优先**
   - 断点需要按"目标长度 + 管件占位补偿"反推。
   - 否则常见现象是目标 1200，结果 1197~1199（取决于族几何/连接器位置）。

**实践建议：**在 UI 中增加"严格定长"语义提示，并把"连接件失败不阻断主流程"与"长度精度优先级"写进结果说明，避免用户误判为算法错误。

---

## 12) 2026-04-23 模块化瘦身模式：把一个胖分段器拆成四层

这次 SuperRoky 风管分段重构验证出一个可复用的拆分模式：**先把职责边界切清，再把共享类型下沉，再逐层收紧连接逻辑。**

### 推荐分层

- `DuctSegmentCommand`
  - 只保留入口编排、用户输入、结果汇总
- `DuctPathPlanner`
  - 只保留主路径构建与站点映射
- `DuctPathPlanningHelper`
  - 放 ledger / station 查找 / pre-check 这类纯规划辅助
- `DuctSegmentationExecutor`
  - 只管单根风管的严格分段主循环
- `DuctPathBreakExecutor`
  - 只管 ledger 切点、BreakCurve、station 重建
- `DuctSegmentationConnectionHelper`
  - 只管管件识别和连接件回退
- `DuctSegmentationGeometryHelper`
  - 只管段长校正
- `DuctSegmentationConstants` / `DuctSegmentationTypes`
  - 公共常量和枚举下沉到 Models，减少 helper 之间的循环依赖

### 这次证明了什么

1. **共享枚举不要挂在 executor 身上。**
   `SegmentResult / CorrectionResult / ConnResult` 最终下沉到 `Models`，helper 之间的耦合立刻下降。

2. **planner 会自然变胖。**
   一旦 planner 里同时有路径构建、ledger、pre-check，就该拆出 `DuctPathPlanningHelper`。

3. **连接器匹配要先过滤再尝试。**
   先限定 `ConnectorType.End + DomainHvac`，再在候选里按距离选最优，最后 union / transition 回退。别拿“最近的连接器”直接硬连。

4. **每个拆分点都要跑 Windows build。**
   这个项目的 Revit/WPF 编译门禁最终还是 Windows。Linux 只能做结构检查，不能当最终验证。

### 经验规则

- 主文件目标：职责单一，不追求一次拆到极致，但要避免“一个类里又全是算法”的回潮。
- 共享语义优先下沉到 `Models`，别让多个 helper 互相引用对方的内部 enum。
- 连接件逻辑要保留“失败不阻断主流程”的策略，但匹配条件必须收严。
- 若重构过程中连续出现编译炸点，优先补缺失的 `using` / 类型引用，再继续拆，别一口气改太多。
