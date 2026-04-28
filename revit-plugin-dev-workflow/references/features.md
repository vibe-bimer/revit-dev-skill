---
name: features
description: "SuperRoky 和 FmRoky 插件功能跟踪表。owner、status、blocker、依赖关系一目了然。"
---

# 插件功能跟踪

> 单一入口说明：
> - 流程图只认 `revit-workflow-topology.*` + `revit-workflow-sop.*`
> - 环境/部署规范只认 `revit-build-deploy`
> - Owner: roky ｜ 最后更新：2026-04-16

## 符号约定

| 符号 | 含义 |
|------|------|
| ✅ | 功能完成，Revit 手动测试通过 |
| 🔲 | 规划中，未开始 |
| 🔄 | 开发中 |
| ❌ | 已废弃 / 删除 |

---

## SuperRoky（Nice3point 框架）

| 功能 | Ribbon 按钮 | Status | Owner | Blocker / 依赖 | 备注 |
|------|------------|--------|-------|----------------|------|
| 仙人板板 | `仙人板板` | ✅ | roky | — | 2026-04 上线 |
| 组元阶段 | `组元阶段` | ✅ | roky | — | 2026-04 上线 |
| List Walls | — | ❌ | — | 2026-04-13 删除 | 代码+图标+测试全清 |

---

## FmRoky（Scotec 框架）

| 功能 | Status | Owner | Blocker / 依赖 | 备注 |
|------|--------|-------|----------------|------|
| FamilyExplorer | ✅ | roky | — | 树形文件夹 + 预览 |
| FamilyNavigator | ✅ | roky | — | 网格/卡片浏览 |
| 全文搜索 | ✅ | roky | — | 所有活跃族源 |
| 预览图生成 | ✅ | roky | — | EStorage > Revit 内置 |
| 拖放加载族 | ✅ | roky | — | 双击/拖放到视图 |
| 设置面板 | ✅ | roky | — | 族源 CRUD + 启用禁用 |
| 创建预览图（批量） | 🔲 | roky | EStorage 写权限验证 | 可独立运行 |

---

## 框架特性对比

| 维度 | SuperRoky | FmRoky |
|------|-----------|--------|
| DI | MS.DI | Autofac |
| .NET | 8.0.419 | 10.0.201 |
| Ribbon Tab | `SuperRoky` | `scotec` |
| 隔离方式 | AssemblyLoadContext | Scotec.Revit.Isolation |
