---
name: revit-plugin-dev-workflow
description: "Revit 2026 插件开发全生命周期。阶段 0 需求分流 → 阶段 1 Wiki+编码+编译 → 阶段 2 测试 → 阶段 3 维护 → 阶段 4 发布。Hermes 不直接修改 Revit 源码，默认委托 Claude Code 完成编码与代码审查。"
metadata:
  author: Hermes/Roky
  revit_version: "2026"
  dotnet_version: ".NET 8 (SuperRoky) + .NET 10 (FmRoky)"
  templates: Nice3point.Revit.Templates (SuperRoky only)
linked_files:
  references:
    - references/environment.md
    - references/features.md
---

# Revit 插件全生命周期工作流

## 快速执行卡片（90 秒）

> 环境加载硬规则：Hermes 走 Revit 工作流时，shell 命令默认用包装脚本执行，避免遗漏私有 env。
>
> ```bash
> ~/.hermes/skills/revit/scripts/use-private-env.sh <command>
> ```

0) 对照架构图：先过 `references/revit-workflow-topology.*`（拓扑）+ `references/revit-workflow-sop.*`（SOP 门禁），确认本次插件线、同步链路、门禁口径
1) 选插件线：SuperRoky（.NET 8/Nice3point）或 FmRoky（.NET 10/Scotec）
2) 查 Wiki：`/home/roky/roky-wiki/revit-api/entities/` + `/home/roky/revit-corpus/index/` + `/home/roky/revit-corpus/raw/revit-2026/`
3) 写 spec：目标/文件变更/API 依据/验收标准/回滚策略/可观测性
4) 委托代理：默认 Claude Code 进行编码+审查（Hermes 不直接改 Revit 源码）
5) 手动提交：`git commit -m "中文描述"`（默认必须中文；auto-commit 仅兜底）
6) 构建部署：SuperRoky `./build.sh`；FmRoky `./build-fmroky.sh`
7) 验证门禁：按改动类型跑测试矩阵 + Revit smoke

## Goal-Driven 任务卡写法（推荐用于日常 Revit 开发）

当用户给出的是“修 bug / 做优化 / 完成功能”这类任务时，优先把需求收敛成下面五块，再进入编码：

```text
Goal:
[[[[[一句话说明要完成的 Revit 结果]]]]]

Criteria for success:
[[[[[
1. 可验证的完成条件
2. 编译通过
3. Revit 2026 可加载
4. smoke test / 回归通过
5. 不破坏现有命令和 UI
]]]]]

Project constraints:
- 插件线：SuperRoky / FmRoky
- 先查 Revit Wiki / 现有代码 / API 依据
- 不凭印象猜 API
- 明确变更文件和回滚方式
- UI 变更要检查按钮、图标、文案、布局

Implementation defaults:
- 把最容易返工的规则先冻结（范围、边界、异常策略、最小阈值）
- 默认从“选中元素”开始，除非任务明确要求系统级批处理
- 不确定项不要留给子 agent 现猜，先写进口径

Mandatory questions to settle before coding:
1. 处理范围是选中元素还是系统批处理？
2. 尾段/余量如何处理？
3. 连接件按族还是按族类型？
4. 不兼容时是跳过还是整体失败？
5. 复杂网络（如三通/变径/软风管）这版做不做？
6. 最小阈值是多少？
```

对于“风管分段”这类特别容易返工的任务，先冻结口径再写 spec。不要把问题本身继续写成问题。

## 快速入门（6 步）

```
① 对照架构图  → topology + sop 双图先确认执行边界
② 选插件线    → SuperRoky（Nice3point/.NET 8）或 FmRoky（Scotec/.NET 10）
③ 查 Wiki     → /home/roky/roky-wiki/revit-api/entities/ + /home/roky/revit-corpus/index/ + /home/roky/revit-corpus/raw/revit-2026/ 找 API 签名和示例
④ 写 spec     → 明确改什么、怎么改，输出给 Claude Code（含回滚与可观测性）
⑤ 编码+审查   → 委托 Claude Code（delegate_task），一次任务包含编码和审查
⑥ 编译部署    → SuperRoky: ./build.sh ｜ FmRoky: ./build-fmroky.sh
```

> 详细阶段说明见下方 §阶段 0~4。红线规则见 §纪律红线。

## 参考资料

- `references/environment.md`：环境路径、凭据入口、Git/SSH/NuGet 速查
- `references/features.md`：插件功能状态与依赖追踪
- `references/revit-workflow-topology-v3.html` / `.png`：系统拓扑图
- `references/revit-workflow-sop.html` / `.png`：SOP 门禁图

| 图 | 文件 | 用途 |
|---|---|---|
| 图A：系统拓扑 | `references/revit-workflow-topology-v3.html` / `.png` | 角色、基础设施、push-pull 链路 |
| 图B：SOP 门禁 | `references/revit-workflow-sop.html` / `.png` | 步骤、门禁、回滚分支 |

双图位于 `references/` 下；按需打开对应的 HTML 或 PNG 文件即可。

> ⚠️ **硬门禁**：阶段 0 选线前，必须先过双图确认执行边界。跳过 = 返工风险自担。

## 维护说明（当前状态）

- 双图（topology + sop）是当前执行边界与门禁的唯一图形资产。
- break-glass 仅限 P0 阻断，默认禁止，需明确批准与补审计。
- Phase 排序单点真相：数字阶段名按数值；非数字阶段名按 Collector 顺序；禁止 `Id.Value` 作为业务排序。
- 守卫脚本采用分层检查：基础 `PATTERN` 负责旧引用/敏感信息，`EXTRA_CHECKS` 负责 workflow drift。

## ⛔ 纪律红线（违反 = 返工）

> **这些规则没有例外。违反任何一条都可能导致编译失败、部署丢失、git 污染。**

| # | 规则 | 原因 |
|---|------|------|
| 1 | **Hermes 不直接改 Revit 源码文件** | Hermes 不是 C# 专家。**"写代码"包括**：`patch`、`write_file`、`terminal` 内的 sed/echo/cat 写入，对 `.cs` `.xaml` `.xaml.cs` `.addin` `.csproj` 的任何修改。默认委托 Claude Code；必要时可用其它受控代理，但流程与审查门禁不变 |
| 2 | **"简单改动"不是借口** | "只是删几行"、"只是改个排序"、"只是改个字符串" — 全都算写代码，都必须走受控代理流程。简单改动的 spec 可以写得很短，但流程不能跳 |
| 3 | **手动提交优先，auto-commit 硬限 2 次** | 默认先手动 `git commit -m "中文描述"`。build 脚本允许 auto-commit 兜底，但连续 2 次后第 3 次触发 `E100` 闸门拒绝，要求手动提交清零 |
| 4 | **按插件线使用唯一入口脚本** | SuperRoky 必须走 `build.sh`，FmRoky 必须走 `build-fmroky.sh`。手动 scp + dotnet build 只编译到 bin/，不部署到 Addins，还会污染 Windows git 状态 |
| 5 | **git 失败即中止，不继续编译** | push/pull 失败说明同步断了，继续编译只会产生不同步的产物 |
| 6 | **git 失败禁止 scp 绕过（默认）** | scp 覆盖文件会导致 Windows git 脏状态；仅允许走灾备附录并经过人工批准 |
| 7 | **写代码前必须先查 Wiki** | Revit 2026 有很多 API 网上教程有但实际不存在，先查 Wiki 避免 90% 编译错误 |
| 8 | **图标同步三处** | csproj Resource + Application.cs SetImage/SetLargeImage + 实际 PNG 文件，缺一不可 |
| 9 | **修完 bug 后检查是否记踩坑** | 同类问题不应出现第二次 |
| 10 | **编码和审查同一任务闭环** | 默认在一次 delegate_task 中完成编码+审查；如需拆分必须在 spec 中说明原因与风险 |

### Hermes 的职责边界

```
Hermes 只做：                    Claude Code 做：
├── 分析用户需求                  ├── 编写/修改代码
├── 查 Wiki/API 文档              ├── 审查代码质量
├── 编写 spec（要改什么、怎么改）    └── 修复合规问题
├── 委托 Claude Code 编码+审查
├── git commit（描述性 message）
├── 按插件线执行 ./build.sh 或 ./build-fmroky.sh 编译部署
└── 验证结果，记录踩坑
```

---

## 架构

> 角色边界、push/pull 链路、执行门禁以 `references/revit-workflow-topology.*` 与 `references/revit-workflow-sop.*` 为准；不再维护正文中的文本版拓扑图。
**Ubuntu 管思考和代码，GitLab 管版本，Windows 管编译和验证。两个插件完全独立，框架不同，别串。**

> ⚠️ **Windows 端永远只 pull，禁止 push。** 所有代码改动必须在 Ubuntu 端完成并 push 到 GitLab，Windows 端只负责拉取、编译、部署。
>
> 环境路径、凭据入口、Git/SSH/NuGet 速查统一维护在 `references/environment.md`；本 skill 只保留流程门禁。

## ⛔ Spec 闸门（最优先，优先于一切）

> **这条闸门的优先级高于 Stage 0 内的所有其他步骤。收到需求后，首先判断 spec 状态，不满足就中止。**

### 闸门规则

| 条件 | 行为 |
|------|------|
| 用户需求附带完整 spec（含目标/变更文件/API 依据/验收标准/回滚策略/可观测性） | ✅ 直接进入选线阶段 |
| 用户需求没有 spec | ⛔ **立即中止，不得进入 Stage 1 编码**。回复用户：「先填 spec。以下模板，填完我再推进。」附上 §Spec 模板 |
| 用户说"只是个简单改动，不用 spec" | ⛔ **仍然中止。** 回复：「红线规则：简单改动也要 spec。可以写得很短，但流程不能跳。填完模板我马上推进。」 |
| 用户说"你先大概做一下" | ⛔ **仍然中止。** 回复：「不能"大概做"。Revit API 猜了必挨打。先定 spec，明确要改什么、怎么验收。」 |

### Hermes 在闸门上的强制行为

1. **判断**：收到需求后，扫 spec 模板的 6 个必填字段是否都有内容：
   - 目标
   - 变更文件
   - API 依据
   - 验收标准
   - 回滚策略
   - 可观测性
2. **缺字段** → 列出缺失字段，要求补齐。不得根据上下文"帮用户脑补"默认值然后直接推进。
3. **全字段有** → 进入选线阶段，按正常流程推进。
4. **绝对禁止**：不得以任何理由绕过此闸门。包括但不限于："用户很急"、"改动很小"、"之前做过类似的"、"用户让我先动手"。

> ⚠️ 这不是"推荐流程"。这是闸门。违反 = 流程破窗，计入 Review 扣分。

---

## 阶段 0: 需求分流（spec 通过闸门后才进入）

收到任何 Revit 插件开发需求时，先做**硬分流**，别混框架：

### 0.1 先选插件线（强制二选一）

- **SuperRoky 线（Nice3point / .NET 8）**：路径 `~/revit-plugin-dev/src/SuperRoky`
- **FmRoky 线（Scotec / .NET 10）**：路径 `~/revit-plugin-dev/Bim.FamilyManager`

> ⚠️ 一旦选线，当次任务内不切线。混用配置=高概率返工。

### 0.2 快速执行清单（1页版）

| 需求类型 | 固定步骤（按顺序） | 必备产物 |
|---|---|---|
| 新功能 | Wiki/API 检索 → spec 模板 → Claude Code 编码+审查 → build 脚本 → Revit 验证 | spec、commit、build log、验证结论 |
| 改/删功能 | 定位文件+影响面 → spec 模板 → Claude Code 编码+审查 → build 脚本 → 回归验证 | 影响清单、commit、build log |
| Bug 修复 | 复现+根因 → Wiki/API 交叉验证 → Claude Code 修复+审查 → build 脚本 → 踩坑沉淀 | 根因说明、修复点、FAQ增量 |
| 发布 | release 构建 → smoke 测试 → 产物打包 → 发布记录 | 版本号、zip、发布说明 |

### 0.3 向用户确认（最小必要）

1. 本次是 SuperRoky 还是 FmRoky？
2. 功能/bug 的验收口径是什么（“做成”定义）？
3. 有无参考代码/UI 稿/历史 issue？

> ⚠️ 这一步不做，后面全靠猜。猜 Revit API 基本都会挨打。

### 0.4 几何切分/批处理命令（如风管分段）需求补全清单

当需求包含“按长度切分 + 插入连接件 + 批量处理”时，必须在编码前补齐以下口径：

1. **处理范围**：仅选中元素 / 同系统全部元素（是否包含支路）。
2. **余量规则**：除不尽时最后一段如何处理（保留短段 / 强制等分 / 小于阈值跳过）。
3. **连接件粒度**：按族还是按族类型（实现必须使用 `FamilySymbol`，UI 建议显示“族名:类型名”）。
4. **不兼容策略**：尺寸或连接器不匹配时，跳过继续还是整体失败中止。
5. **复杂网络边界**：是否处理三通/变径/软风管/占位线，V1 建议先限定硬风管 Duct。
6. **输入下限**：最小分段长度（mm）必须设阈值，避免极小值导致模型爆炸。

> ⚠️ 这 6 条不冻结，后续实现会反复返工（尤其是“全系统范围”和“连接件兼容性”）。

#### 风管分段的最终收口口径（经验沉淀）

- **SelectedOnly**：保持“单根风管逐根切分”的老语义，不要偷偷改成系统级路径算法。
- **EntireSystem**：不要再按“每根 duct 的长度”逐根判断是否切刀；应接到 `BuildMainPath()` → `BuildPathStations()` → `BuildPathLedger()` → `ExecuteLedgerBreaksOnMainPath()` 这条链路，让短支路/短尾段沿连续路径自然参与，而不是在单根 duct 上提前 `break`。
- **几何校正**：不要再把风管端点强行拉/缩到目标整数段；只记录偏差并通过后续补偿或账本处理，避免“看起来整齐、实际几何被改坏”。
- **摘要/文案**：不要再写“每段严格等于”或暗示单根 duct 独立切分；应明确是连续路径计账、余量段保留。
- **回归信号**：如果全系统模式里出现“短支路没继续走下去”，先查是否还在使用逐根 duct 的旧循环，而不是先改 summary 文案。

> 这条是从风管分段实战里提炼出来的：**全系统模式的核心不是“多处理几根管”，而是“换成连续路径账本”**。

---

## 阶段 1: 开发

### 1.1 项目初始化（仅新建插件）

→ 详见 `revit-build-deploy` skill 的「项目初始化」章节（Nice3point 模板安装、创建项目、同步回 Ubuntu）。

### 1.2 项目结构（Nice3point 模板生成）

```
src/MyPlugin/
├── source/              ← 源码在此（不是根目录）
│   ├── MyPlugin.csproj  ← ⚠️ csproj 在 source/ 下
│   ├── Application.cs
│   ├── Commands/
│   ├── Views/
│   ├── ViewModels/
│   ├── Resources/Icons/
│   └── MyPlugin.addin
├── tests/               ← TUnit 测试项目
│   └── MyPlugin.Tests.csproj
└── global.json          # SDK 8.0.419 + msbuild-sdks Nice3point.Revit.Sdk:6.0.0
```

**csproj / global.json / IsRepackable 等关键配置** → 详见 `revit-build-deploy` skill 的「csproj 关键属性」和「global.json」章节。

### 1.3 Wiki 先行（写/改代码前必做）

**任何涉及 Revit API 的功能开发，必须先查 Wiki 和现有代码，再动手写。**

流程：
```
1. 查 Wiki 示例 → /home/roky/roky-wiki/revit-api/entities/ 找现成代码片段
2. 查 API 签名 → /home/roky/revit-corpus/raw/revit-2026/core/ grep 方法签名
3. 读现有代码 → search_files 找插件中相关的 Commands/Services
4. 综合分析 → Wiki API + 现有代码结构 → 制定实现方案
5. 写 spec → 委托 Claude Code 编码
```

**具体操作：**
```bash
# Step 1: 找 Wiki 示例
search_files(pattern="Family|FamilySymbol|LoadFamily", path="/home/roky/roky-wiki/revit-api/entities/")

# Step 2: 找 API 签名（如果 entities 没有足够的细节）
search_files(pattern="LoadFamily|FamilySymbol", path="/home/roky/revit-corpus/raw/revit-2026/core/")

# Step 3: 读插件现有相关代码
search_files(pattern="Family|LoadFamily", path="~/revit-plugin-dev/src/SuperRoky/source/")

# Step 4: 结合需求和代码结构制定方案
# Step 5: 写 spec → 委托 Claude Code
```

> ⚠️ **不查 Wiki 直接写 = 猜 API。** Revit 2026 有很多 API 在网上教程里能搜到但实际不存在（如 `Family.FamilyPath`、`UIDocument.PromptToPlaceFamily`），编译时才报 CS0117。先查 Wiki 可以避免 90% 的这类问题。

### 1.4 图标获取与同步

新增功能按钮的图标从 [Remix Icon](https://remixicon.com) 获取（`remix-icon` skill）。

**图标同步三处（缺一不可）：**

1. **csproj** — `<Resource Include="Resources\\Icons\\IconName16.png"/>`
2. **Application.cs** — `.SetImage("...")` + `.SetLargeImage("...")`
3. **图标文件** — 放到 `source/Resources/Icons/` 目录，16×16 和 32×32 PNG 各一个

**获取流程：**
```bash
# 搜索关键词找到合适的图标
python3 ~/.hermes/skills/remix-icon/scripts/fetch_icon.py --keyword "layers" --top 5

# 如果下载失败（GitHub raw 限流），从 remixicon.com 手动下载 SVG
# 然后用 Python cairosvg 或 Pillow 转成 16×16 和 32×32 的 PNG
```

> ⚠️ 图标文件必须同时有 16px 和 32px 两个尺寸。Ribbon 大按钮用 32px，小按钮用 16px。

### 1.5 编码 + 审查（Claude Code）

**编码和审查都由 Claude Code 完成。Hermes 严禁自己写/改 Revit 插件代码。**

#### 1.5.0 代理不可用时的降级策略（新增）

如果 `delegate_task` 连续返回上游错误（如 `HTTP 503: Service temporarily unavailable`），不要原地空转，也不要违反红线自己改 `.cs/.xaml` 源码。正确做法：

1. **先把分析做满**：读目标命令、对话框、相关 ViewModel/服务代码，确认主流程、统计口径、现有死逻辑。
2. **落完整 spec 到仓库**：写入 `~/revit-plugin-dev/docs/plans/YYYY-MM-DD-<feature>-spec.md`，至少包含：目标、变更文件、API 依据、技术约束、关键修复点、验收标准、回滚策略、可观测性。
3. **再落实施拆解**：补一份 `...-implementation-breakdown.md`，把改动拆成代理可直接执行的任务（入口切换、数据结构、算法、summary、UI 文案、构建验证）。
4. **继续重试受控代理**：以这两份文档为上下文重新委托；代理恢复后无需重新梳理需求。
5. **如果代理超时/迭代耗尽但已经动过代码**：不要当成“全失败”直接丢掉。立刻人工接管做三件事：
   - 读取本次允许修改的目标文件，核对主流程入口、统计口径、UI 文案是否真的落地；
   - 跑本地静态构建/语法检查（如 `dotnet build <csproj>`），先区分是新改动编译炸了，还是项目本身已有构建门槛；
   - 向用户明确区分“代码已推进到哪一步”和“当前阻塞点在哪一层（代理响应 / 项目配置 / 编译 / Revit 实机验证）”。
6. **对用户明确状态**：说明“方案/拆解已完成，当前卡点是代理服务，不是需求未澄清”；若代码已被代理修改，则同步说明“已落地部分”和“未验证部分”，避免把半成品说成已完成。

适用场景：复杂 Revit 需求、源码改动受控、但上游代理临时不可用。这个降级路径的价值在于：把等待期变成有效前置工作，代理一恢复就能直接落地。

#### Step 1: Hermes 编写 spec（先套模板，再填内容）

**Spec 模板（固定字段）：**

```markdown
## 目标
（要解决什么问题，成功标准是什么）

## 变更文件
- 路径A：新增/修改/删除
- 路径B：新增/修改/删除

## API 依据
- Wiki/API 签名来源（路径+关键词）

## 技术约束
- 事务边界
- 线程/ExternalEvent 要求
- 阶段排序/过滤规则

## 回归风险
- 可能影响的现有功能

## 验收标准
- 编译通过（配置）
- Revit 加载通过
- 功能 smoke 用例通过

## 非目标
- 本次明确不做什么

## 回滚策略（必填）
- 触发条件：什么情况下需要回滚（如编译失败、Revit 崩溃、功能回归）
- 回滚命令：`git revert <sha>` 或 `git checkout -- <file>` 具体命令
- 验证信号：回滚后确认正常的检查点（如 Revit 启动无报错、旧功能可用）

## 可观测性（必填）
- 日志/输出：改动是否产生新的日志或错误信息
- 监控点：上线后如何确认功能正常（手动验证步骤即可）
```

模板填完再发给 Claude Code，别把"想法"直接当 spec。

```python
# Hermes 分析需求 → 查 Wiki → 写清楚要改什么
spec = """
## 目标
为 SuperRoky 添加「组元阶段」功能：批量修改 Group 内构件的 CreatedPhaseId 和 DemolishedPhaseId。

## 文件变更
- 新建 source/Commands/GroupPhaseCommand.cs
- 新建 source/Views/GroupPhaseDialog.xaml + .xaml.cs
- 修改 source/Application.cs — 添加 Ribbon 按钮

## 技术约束
- 继承 ExternalCommand，TransactionMode.Manual
- Group 内元素需用 IsPhaseCreatedValid 预过滤，不支持阶段的跳过
- Phase 排序规则：阶段名是纯数字字符串时按数值排序；否则沿用 FilteredElementCollector 返回的项目顺序（不要按 Id.Value 排序）
- 图标：source/Resources/Icons/GroupPhase16.png + GroupPhase32.png（已存在）
- csproj 需加 Resource Include

## API 参考
- Element.CreatedPhaseId / Element.DemolishedPhaseId
- Group.GetMemberIds() 递归处理嵌套 Group
- FilteredElementCollector.OfClass(typeof(Phase))

## 已有代码参考
- source/Commands/XianRenBanBanCommand.cs（同类命令结构）
- source/Application.cs（按钮注册方式）
"""
```

#### Step 2: 委托 Claude Code 编码 + 审查

```python
delegate_task(
    goal=f"""为 Revit 2026 插件编写代码并审查。

{spec}

项目: ~/revit-plugin-dev/src/SuperRoky/
API Wiki: /home/roky/revit-corpus/raw/revit-2026/ + /home/roky/roky-wiki/revit-api/entities/

审查清单:
1. Transaction 使用是否正确（必须在 tx 内操作文档）
2. 异常处理是否完善（每个元素赋值独立 try-catch）
3. FilteredElementCollector 是否有过滤器
4. 空值检查（doc, uidoc, element）
5. Revit 2026 API 兼容性（无废弃 API）
6. .addin 格式正确
7. 资源文件引用正确（图标 csproj Resource）
8. 命名规范与现有代码一致

发现问题直接修复，返回修改的文件列表、关键实现说明、审查结果。""",
    context="项目结构、已有代码、API Wiki 路径",
    toolsets=["terminal", "file", "web"]
)
```

#### Step 3: 手动提交（优先）→ build.sh（auto-commit 兜底，限 2 次）

Claude Code 完成编码+审查后，优先手动提交；build 脚本的 auto-commit 有硬上限：

```bash
# 推荐：先手动 commit（描述性 message，清零 auto-commit 计数器）
cd ~/revit-plugin-dev/src/SuperRoky
git add -A
git commit -m "feat: 简化组元阶段对话框，阶段排序按项目顺序"

# 再 build.sh（同步+编译+部署）
cd ~/revit-plugin-dev && ./build.sh
```

```bash
# 也允许直接 build.sh（auto-commit 兜底），但连续 2 次后第 3 次触发 E100 闸门拒绝
cd ~/revit-plugin-dev && ./build.sh
```

> ⚠️ **E100 闸门**：连续 2 次 auto-commit 后，build 脚本拒绝继续自动提交并输出修复步骤。手动 commit 后自动清零。两个插件独立计数（`.build-state` / `.build-state-fmroky`）。

### 1.6 编译即部署

两个插件的编译脚本都已自动化：**编译成功后自动部署到 Revit Addins 目录，不需要手动复制。**

> 经验补充：SuperRoky 这类 Revit 项目在本地直接 `dotnet build` 往往会被 `RevitVersion`、`Microsoft.WindowsDesktop.App` 或 WindowsDesktop SDK 环境卡住；验收时优先跑仓库自带的 `./build.sh --build-only`（或对应插件脚本），把它当作标准构建入口。

#### 本地构建注意（SuperRoky）

`dotnet build source/SuperRoky.csproj -c Debug` 不能直接当作通用入口：该项目的包版本依赖 `$(RevitVersion).*`，如果版本参数未被构建流程注入，会报 `'-1.*' is not a valid version string`。遇到这种情况，先走仓库构建脚本或确认构建模块是否已经写入 `RevitVersion`，不要误判成代码编译错误。

源码同步通过 GitLab（`${GITLAB_HOST}:8929`）完成：
- **SuperRoky：** Ubuntu `git commit + push` → GitLab → Windows `git pull`
- **FmRoky：** Ubuntu `git commit + push gitlab develop:main` → GitLab → Windows `git pull`

```bash
# SuperRoky — 同步 + 编译 + 部署（一步到位）
cd ~/revit-plugin-dev && ./build.sh

# FmRoky — 同步 + 编译 + 部署（一步到位）
cd ~/revit-plugin-dev && ./build-fmroky.sh
```

| 脚本 | 同步方式 | 编译 | 自动部署 | 部署目标 |
|------|---------|:---:|:---:|------|
| `build.sh` | Ubuntu push → GitLab → Windows pull | ✅ build | ✅ Copy-Item | `Addins/2026/SuperRoky/` |
| `build-fmroky.sh` | Ubuntu push → GitLab → Windows pull | ✅ build | ✅ Copy-Item | `Addins/2026/FmRoky/` |

> ⚠️ Revit 运行时 DLL 被锁，编译前必须关闭 Revit。

### 1.7 Git 同步失败处理

**build.sh 的 sync 阶段（git push / git pull）如果失败，流程立即中止，不继续编译部署。**

```
./build.sh
  ├── sync_files()
  │   ├── git push → 失败？→ 打印错误 → exit 1 ⛔
  │   └── git pull → 失败？→ 打印修复命令 → exit 1 ⛔
  ├── build_remote()     ← sync 全部成功才到这
  └── deploy_remote()
```

**处理流程：**
1. build.sh 打印失败原因和修复建议
2. 用户（或 Hermes）排查并修复 GitLab / 网络问题
3. 重新 `./build.sh` 从头开始

**常见修复：**
```bash
# GitLab 不可达 → 检查 Docker 容器状态
ssh root@${GITLAB_HOST} "docker ps | grep gitlab"
ssh root@${GITLAB_HOST} "docker restart gitlab"

# Windows 端 git 脏状态 → 强制清理
ssh Administrator@${REVIT_WINDOWS_HOST} "cd C:/Projects/SuperRoky && git checkout -- . && git clean -fd && git fetch origin && git reset --hard origin/main"

# Unraid Docker 端口 RST（sandbox → Unraid Docker 端口不通）→ 加路由
ssh root@${GITLAB_HOST} "ip route add ${DEV_HOST}/32 dev br1 src ${UNRAID_BR1_SRC}"
```

> ⚠️ **绝对禁止 git 失败后手动 scp 覆盖文件继续编译。** 这会导致 Windows git 状态污染，后续 pull 被 reject。

### 1.8 踩坑捕获（Bug 修复后自动触发）

**修完 Revit 相关 bug 并验证通过后，必须判断是否值得记录到本集合的 FAQ 中。**

#### 记录条件（满足任一即记录）

- 根因涉及 Revit API 行为（非代码逻辑错误）
- 涉及 WPF 与 Revit 的交互（跨线程、Dispatcher、VisualTree）
- 涉及框架特定问题（Nice3point / Scotec 的坑）
- 编译/部署/同步类问题
- 同类问题可能再次出现

#### 归位规则

| 根因类型 | 写入位置 | patch 方法 |
|---------|---------|-----------|
| Nice3point SDK/Toolkit 专属 | `revit-coding-patterns` → `references/nice3point-patterns.md` | `skill_manage(action='patch')` |
| Scotec.Revit 专属 | `revit-coding-patterns` → `references/scotec-patterns.md` | `skill_manage(action='patch')` |
| 通用 Revit API / WPF 踩坑 | `revit-coding-patterns` → SKILL.md | `skill_manage(action='patch')` |
| 编译/部署/同步问题 | `revit-build-deploy` → SKILL.md | `skill_manage(action='patch')` |
| 测试框架问题 | `revit-tunit-testing` → SKILL.md | `skill_manage(action='patch')` |

#### 格式

与现有条目保持一致：`## 简短标题` + 症状描述 → 原因分析 → 修复代码块。

#### 不记录的情况

- 一次性拼写错误、变量名写错
- 纯业务逻辑 bug（与 Revit/WPF/框架无关）
- 已有 FAQ 中完全覆盖的重复问题

---

## 阶段 2: 测试

### 构建验证

```bash
./build.sh --build-only
```

### Revit 加载验证

1. `./build.sh` 部署插件
2. 启动 Revit 2026
3. 检查 Ribbon tab 和按钮是否出现
4. 点击验证功能

### 单元测试

详见 `revit-tunit-testing` skill。测试项目位置：`tests/MyPlugin.Tests.csproj`

> **TUnit 纯单元测试要点**：不依赖 Revit 进程，通过 `RevitApiTestContext` mock `UIDocument`/`Document`，用 `[Test]` 标记测试方法。适合验证 ViewModel 逻辑、数据转换、参数校验等非 UI 逻辑。

### 发布前 DoD 门禁（必须全绿）

| Gate | SuperRoky | FmRoky |
|---|---|---|
| 编译通过 | `./build.sh --build-only` | `./build-fmroky.sh --build-only` |
| Revit 加载 | Ribbon tab/按钮可见 | scotec tab 功能入口可见 |
| 功能 Smoke | 主流程至少 1 条用例跑通 | 主流程至少 1 条用例跑通 |
| 日志健康 | 无 error / fatal | 无 error / fatal |
| 回归检查 | 受影响旧功能可用 | 受影响旧功能可用 |

> 任何 gate 不通过：不进入发布阶段。

### 🚨 Break-Glass 紧急例外流程

**仅用于 P0 阻断场景**（生产环境崩溃、数据损坏风险、客户现场阻断）。

#### 触发条件（必须全部满足）

1. 当前任务阻塞了实际生产或客户交付
2. 正常流程（spec → Claude Code → build）无法在可接受时间内完成
3. 跳过步骤的影响范围可控且可逆

#### 执行步骤

```
1. 口头/文字向用户声明：本次走 break-glass，说明跳过了哪些步骤
2. 记录 break-glass 日志（写入下方格式，追加到本节末尾）
3. 执行紧急修复（允许直接 Claude Code 编码，跳过完整 spec）
4. 立即 build + 验证
5. 限时补审：修复后 2 小时内补齐完整 spec + 审查记录
```

#### Break-Glass 日志格式

```markdown
| 日期 | 触发人 | 原因 | 跳过步骤 | 补审状态 |
|------|--------|------|----------|----------|
| YYYY-MM-DD | 用户/Agent | 一句话原因 | 如"跳过完整spec" | ✅已补审 / ⏳待补审 |
```

> ⚠️ **强审计**：所有 break-glass 记录永久保留，不可删除。未补审的条目需在下一工作日内完成。

---

## 阶段 3: 维护

### Bug 修复

**Bug 修复和新功能走同一条路：Wiki 先行 → Claude Code 编码 + 审查 → build.sh 部署。**

1. 查 Wiki：`/home/roky/revit-corpus/raw/revit-2026/` 或 `/home/roky/roky-wiki/revit-api/entities/`
2. Claude Code 编码 + 审查（§1.5）
3. `./build.sh` 验证
4. 踩坑捕获（§1.8）

### Phase 排序规则（单点真相）

阶段排序细则已经收口到 `revit-coding-patterns`。这里不再重复代码示例，只保留一句：**数字阶段名按数值排序；非数字阶段名保留 `FilteredElementCollector` 顺序；禁止把 `Id.Value` 当业务顺序。**

### API 迁移（版本升级）

| 旧 API | 新 API |
|--------|--------|
| `WALL_HEIGHT_BASE_PARAM` | `WALL_BASE_HEIGHT_PARAM` |
| `OMNICLASS` | `CLASSIFICATION` |
| `UNIFORMAT` | `ASSEMBLY` |
| `REBAR_HOOK_ROTATION_AT_START` | `REBAR_TERMINATION_ROTATION_AT_START` |
| `ViewportPositioning` | `ViewPosition` |
| CefSharp | 已移除 |

---

## 阶段 4: 发布

→ 详见 `revit-build-deploy` skill 的「发布流程」章节。

---

## 子 skill 索引

- `revit-build-deploy` — 编译部署全流程（build.sh、build-fmroky.sh、.addin 格式、常见编译问题）
- `revit-coding-patterns` — 代码模式与踩坑 FAQ（DLL 加载、命名空间冲突、WPF 跨线程、DockablePane、预览图等）
- `revit-tunit-testing` — TUnit 单元测试规范
- `references/features.md` — SuperRoky / FmRoky 功能跟踪（状态、owner、依赖）
- `references/revit-workflow-topology-v3.html` — 图A：系统拓扑图（角色/基础设施/push-pull）
- `references/revit-workflow-sop.html` — 图B：标准化流程图（步骤/门禁/回滚）

---

## 插件功能现状

→ 详见 `revit-build-deploy` 末尾「插件功能现状」章节，或 `references/features.md` 跟踪表（状态/owner/依赖）。

---

## 触发条件

- "开发新插件" / "添加新功能"
- "帮我写一个 Revit 命令"
- "这个 bug 怎么修"
- "审查一下代码"
- "发布插件"
- "更新依赖版本"
- "升级到新版 Revit API"
