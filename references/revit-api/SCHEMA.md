# Wiki Schema

## Domain
Autodesk Revit 2026 二次开发 — 涵盖 Revit API、Dynamo、插件开发、BIM 数据管理与建筑自动化。

## Conventions
- 文件名：小写、连字符、无空格（如 `revit-api-overview.md`）
- 每个 wiki 页面以 YAML frontmatter 开头（见下方）
- 使用 `[[wikilinks]]` 建立页面间链接（每个页面至少 2 个出站链接）
- 更新页面时必须更新 `updated` 日期
- 新页面必须添加到 `index.md` 对应版块
- 所有操作必须追加到 `log.md`

## Frontmatter
```yaml
---
title: Page Title
created: YYYY-MM-DD
updated: YYYY-MM-DD
type: entity | concept | comparison | query | summary
tags: [from taxonomy below]
sources: [raw/articles/source-name.md]
---
```

## Tag Taxonomy
- revit-api
- revit
- API
- dynamo
- pyrevit
- revitpythonwrapper
- csharp
- net
- wpf
- ui
- revit-2019
- revit-2020
- revit-2021
- revit-2022
- revit-2023
- revit-2024
- revit-2025
- revit-2026
- 版本迁移
- bim
- 族library
- 参数化设计
- 协同工作
- 工作流自动化
- json
- excel
- ifc
- bim360
- forge
- 数据库
- visual-studio
- revit-addin-manager
- nuget
- github
- nice3point
- toolkit
- templates
- project-structure
- extension
- architecture
- 调试
- 部署
- 安装
- 错误排查
- comparison
- timeline
- controversy
- prediction
- 实践案例
- docs
- troubleshooting
- workflow
- cross-wiki
- speckle

规则：每个页面的标签必须在上述 taxonomy 中。使用新标签前必须先加到这里。

- lint
- health
- all-subwikis
## Page Thresholds
- **创建页面** — 某技术/概念在 2+ 来源中出现，或在一个来源中处于核心位置
- **追加到现有页面** — 来源提到了已覆盖的内容
- **不创建页面** — 临时提及、微小细节或超出领域范围的内容
- **拆分页面** — 超过 ~200 行时拆分为子主题并建立交叉链接
- **归档页面** — 内容完全过时时移至 `_archive/`，从 index 中移除

## Entity Pages
每个 notable 实体一页。包括：
- 概述 / 是什么
- 关键事实和日期
- 与其他实体的关系（[[wikilinks]]）
- 来源引用

## Concept Pages
每个概念或主题一页。包括：
- 定义 / 解释
- 当前知识状态
- 开放问题或争议
- 相关概念（[[wikilinks]]）

## Comparison Pages
对比分析页。包括：
- 对比内容和对比原因
- 对比维度（建议表格格式）
- 结论或综合分析
- 来源

## Update Policy
新信息与现有内容冲突时：
1. 检查日期 — 新来源通常覆盖旧来源
2. 确有矛盾时，记录双方立场并标注来源日期
3. 在 frontmatter 中标记：`contradictions: [page-name]`
4. 在 lint 报告中标记，待用户审核

## Supported Versions
主要覆盖 Revit 2026，同时兼容 2020-2025 的 API 变更记录。
