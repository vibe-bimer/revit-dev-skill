# Revit Runtime Smoke Checklist

编译部署成功不等于插件可用。本清单用于 `./build.sh` / `./build-fmroky.sh` 成功后的 Revit 2026 实机冒烟验证。

## 前置条件

- Windows 上 Revit 2026 已关闭后完成构建部署。
- 构建脚本成功结束：
  - SuperRoky：`./build.sh`
  - FmRoky：`./build-fmroky.sh`
- `.addin` 与 DLL 已部署到：
  - `C:/ProgramData/Autodesk/Revit/Addins/2026/SuperRoky.addin`
  - `C:/ProgramData/Autodesk/Revit/Addins/2026/SuperRoky/`
  - `C:/ProgramData/Autodesk/Revit/Addins/2026/FmRoky.addin`
  - `C:/ProgramData/Autodesk/Revit/Addins/2026/FmRoky/`

## SuperRoky smoke

打开 Revit 2026 后检查：

- [ ] 启动无 Addin 加载报错。
- [ ] Ribbon tab / panel 正常出现。
- [ ] `仙人板板` 按钮可见。
- [ ] `组元阶段` 按钮可见。
- [ ] 点击一个无害入口能打开 UI 或给出预期提示，不崩溃。
- [ ] Revit Journal / 插件日志无 error / fatal。

## FmRoky smoke

打开 Revit 2026 后检查：

- [ ] 启动无 Addin 加载报错。
- [ ] FmRoky / Bim.FamilyManager 入口正常出现。
- [ ] FamilyExplorer 可打开。
- [ ] FamilyNavigator 可打开。
- [ ] 设置面板可打开。
- [ ] 族源列表加载不崩溃；无族源时有正常空状态。
- [ ] Revit Journal / 插件日志无 error / fatal。

## 失败判定

任一项失败时：

1. 不进入发布。
2. 记录失败截图/日志。
3. 先区分：加载失败、UI 入口失败、运行时异常、数据源异常。
4. 回到对应 skill：
   - 加载/部署：`revit-build-deploy`
   - API/WPF 行为：`revit-coding-patterns`
   - 测试补齐：`revit-tunit-testing`

## 最小结论模板

```text
SuperRoky smoke: PASS/FAIL
FmRoky smoke: PASS/FAIL
Revit version: 2026
Build commit: <sha>
Notes: <异常/截图/日志路径>
```
