# FmRoky Warning Baseline

本文件记录 FmRoky 当前可接受的编译 warning 基线。目标不是把 warning 美化成 0，而是区分“已知噪音”和“新增风险”。

## 当前基线

最近一次完整构建：

```text
./build-fmroky.sh
已成功生成。
57 个警告
0 个错误
```

## 已知可忽略 warning

### MSB3246 — Revit API DLL metadata 噪音

典型内容：

```text
warning MSB3246: 解析的文件包含错误图像、无元数据或不可访问。
PE image does not have metadata.
```

原因：

- FmRoky 使用 .NET 10 SDK / Roslyn 5.0。
- Revit API DLL 属于 Revit/.NET Framework 生态，MSBuild 解析时会产生 metadata warning。
- 多个子项目都会重复触发，数量较多但不影响编译和运行。

常见项目：

- `Bim.FamilyManager.Abstractions`
- `Bim.FamilyManager.Base`
- `Bim.FamilyManager.Ui`
- `Bim.FamilyManager.Source.Directory`
- `Bim.FamilyManager.Ui.FamilyExplorer`
- `Bim.FamilyManager.Source.AzureStorage`
- `Bim.FamilyManager.Ui.FamilyNavigator`
- `Bim.FamilyManager`

### CS0219 — Scotec source generator 未使用变量

典型内容：

```text
warning CS0219: 变量 “sharedContextName” 已被赋值，但从未使用过它的值
```

来源：

```text
obj/Release/net8.0-windows/generated/Scotec.Revit.Isolation.SourceGenerator/.../RevitAssemblyLoadContextInitializer.g.cs
```

这是 Scotec.Revit.Isolation source generator 生成代码里的未使用变量，不是业务代码问题。

## 判断规则

| 信号 | 处理 |
|---|---|
| `0 error`，仅 MSB3246 + CS0219 | 可接受 |
| 出现新 warning code | 人工 review，必要时写入本 baseline |
| warning 数量大幅变化 | 检查是否新增项目/引用或构建链变化 |
| 任意 `error` | 阻断，不允许发布 |
| Revit 启动 Addin 报错 | 即使编译成功也算失败 |

## 推荐验证

```bash
~/.hermes/skills/revit/scripts/use-private-env.sh /bin/bash -lc 'cd ~/revit-plugin-dev && ./build-fmroky.sh'
```

如只做编译不部署：

```bash
~/.hermes/skills/revit/scripts/use-private-env.sh /bin/bash -lc 'cd ~/revit-plugin-dev && ./build-fmroky.sh --build-only'
```

注意：若 Windows 上 Revit 正在运行，E150 会先阻断构建，这是正确行为，不属于 warning baseline。
