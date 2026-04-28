# Wiki Log

> 所有 wiki 操作的时序记录。只追加，不编辑。
> 格式：`## [YYYY-MM-DD] action | subject`
> Action: ingest, update, query, lint, create, archive, delete
> 本文件超过 500 条时轮转：重命名为 `log-YYYY.md`，新建空文件。

## [2026-04-08] create | Wiki initialized
- Domain: Autodesk Revit 2026 二次开发
- Structure created with SCHEMA.md, index.md, log.md
- Files: SCHEMA.md, index.md, log.md

## [2026-04-08] create | Wiki 首次内容填充
- Entities 新建（12个）: Document, Element, Wall, Level, View, Family, FamilySymbol, FamilyManager, UIDocument, Application, ElementId, XYZ
- Concepts 新建（5个）: Transaction System, FilteredElementCollector, Parameters, Family API, Element 继承体系
- index.md 重建为 llm-wiki 规范格式（Entities/Concepts/Comparisons 分组）
- 原始数据：28,796 个 API 文档（~/wiki/raw/revit-2026/）

## [2026-04-14] ingest | Speckle 平台源码批量分析
- 来源：speckle-sharp-connectors + speckle-server + speckle-docs-NEW（3 个 GitHub 仓库）
- 分析报告：16 篇（12,138 行，460KB），由 Claude Code 子 agent 生成
- 目录结构：speckle/connectors/（7篇）+ speckle/server/（5篇）+ speckle/docs/（3篇）+ speckle/concepts/（1篇）
- SCHEMA.md 更新：新增 Speckle 平台 tag taxonomy（30 个标签）
- index.md 更新：新增 Speckle 平台章节（16 个条目）
- GBrain 索引页：7 个 page + 11 条 link（speckle-overview → 5 个子页面）

## [2026-04-18] create | Wiki structure bootstrap
- 补齐目录：raw/articles, raw/papers, raw/transcripts, raw/assets, entities, concepts, comparisons, queries
- 现有 SCHEMA.md / index.md / log.md 保留并继续沿用

## [2026-04-23] lint | 216 issues found
- 范围：42 个 wiki 页面（排除 raw/ 与 chm-converter 工作产物）
- Broken links: 99（主要是 index / 页面内部继续使用 `[[Document]]` 这类 TitleCase 名称，而实际文件 slug 为 `document` / `filtered-element-collector` / `transaction-system` 等）
- Orphans: 27
- Missing from index: 26；extra index refs: 23
- Frontmatter missing required fields: 4（均缺 `sources`）
- Invalid tag usages: 30
- Single-source pages without confidence: 38
- Oversized pages (>200 lines): 19
- Log rotation not needed

## [2026-04-23] update | Revit 主库链接与索引修复
- 修复范围：index.md + 24 个 Revit 实体/概念/比较/查询页的 wikilink slug 归一化
- 统一 `[[Document]]` / `[[FilteredElementCollector]]` 等 TitleCase 链接到实际 slug（如 `[[document|Document]]`、`[[filtered-element-collector|FilteredElementCollector]]`）
- 修复剩余 7 个无落点链接：可映射的改到现有页面；无独立页面的改为普通术语/代码标识
- index.md 补齐 Queries / Reference Pages，纳入 `common-patterns`、`revit-api-reference`、`revit-toolkit-guide`
- 复检结果：broken links 99 → 0；missing from index 26 → 0；extra index refs 23 → 0；orphans 27 → 8

## [2026-04-23] update | Orphan pages repaired
- 修复范围：7 个入口页补链，覆盖剩余 8 个 orphan
- 入链策略：从语义父页补到孤儿页，而不是靠 index 假连通
- 新增入链：Element → element-hierarchy / boundingboxxyz；Family → family-api；FilteredElementCollector → common-patterns；Parameters → api-version-differences；Document → revit-api-reference；revit-api-reference → revit-toolkit-guide；Speckle API docs → Connector SDK docs
- 复检结果：broken links 0；missing from index 0；extra index refs 0；orphans 8 → 0

## [2026-04-23] update | P1 metadata cleanup
- 修复范围：frontmatter / tag taxonomy / confidence quality signals
- SCHEMA.md taxonomy 补齐既有有效标签：nice3point、toolkit、templates、project-structure、architecture、revit、API 等
- 补齐 4 个页面缺失的 sources：api-version-differences、common-patterns、revit-api-reference、revit-toolkit-guide
- 为单来源页面补 `confidence: medium`，避免单源内容被默认为高置信事实
- 规范化 `queries/common-patterns.md` 的 type：queries → query；规范化 `revit-api-reference.md` 标签：extensions → extension
- 复检结果：missing required frontmatter 4 → 0；invalid tags 30/6 remaining → 0；single-source without confidence 38 → 0；invalid types 1 → 0

## [2026-04-26] lint | 63 issues found
- 范围：42 个可导航 wiki 页面（entities/concepts/comparisons/queries/speckle + 根目录参考页），raw/ 仅做 sha256 drift 检查
- P0：broken links 0；missing from index 0；extra index refs 0；orphans 0
- P1：invalid types 2（`revit-api-reference.md`、`revit-toolkit-guide.md` 仍为 `guide`）
- P1：invalid tags 42（主要为 `revit-2020~2026` 版本标签不在 taxonomy）
- P2：oversized pages 19（Speckle 深度页与参考页体量过大，建议拆分）
- 质量信号：single-source without confidence 0；low confidence 0；contested 0
- 漂移与维护：source drift 0；stale pages 0；log rotation not needed
- 新增报告：`queries/lint-health-2026-04-26.md`
- 更新索引：`index.md` Queries 区新增 lint 报告入口

## [2026-04-26] update | Lint priority fixes + split plan
- 修复 invalid type（2）：`revit-api-reference.md`、`revit-toolkit-guide.md` 统一为 `type: summary`
- 修复 invalid tags（42）：`SCHEMA.md` 补齐 Revit 版本 taxonomy（revit-2019~2026 拆分为独立标签）
- 新增：`queries/lint-remediation-2026-04-26.md`
- 新增：`queries/oversized-split-plan-2026-04-26.md`（19 个超长页分批拆分方案）
- 更新：`queries/lint-health-2026-04-26.md` 增加 frontmatter 与交叉链接
- 更新：`index.md` 的 Queries 区登记上述两份新页面

## [2026-04-26] update | Oversized pages split execution
- 执行范围：19 个超长页面，完成总览页重写 + 子专题页创建
- 新增子页：88 个
- 更新父页：19 个
- 索引更新：index.md 新增 Split Subpages（2026-04-26）
- 关联计划：`queries/oversized-split-plan-2026-04-26.md`

## [2026-04-26] lint | post-remediation green
- 范围：133 个可导航页面（含新拆分子页）
- 结果：broken links 0 / orphans 0 / missing from index 0 / extra index refs 0
- 元数据：missing frontmatter 0 / missing required fields 0 / invalid types 0 / invalid tags 0
- 体量：oversized pages 0

## [2026-04-26] update | Index split-section cleanup
- 将 `index.md` 的 `Split Subpages（2026-04-26）` 改为模块化分组（connectors/server/docs/concepts/revit/queries）
- 保留全部 88 个子页链接，不删项，仅重排提升可读性

## [2026-04-26] lint | 99 issues found
- Report: queries/lint-health-2026-04-26-all-subwikis.md
- broken_links=0, orphans=0, missing_from_index=0, invalid_tags=0

## [2026-04-26] update | index/schema cleanup
- Removed mixed speckle sections from index
- Rebuilt index from navigable pages only

## [2026-04-27] update | federated lint remediation (phase-1)
- Moved 5 reference pages into `concepts/` to match navigable scope
- Added `lint/health/all-subwikis` tags into SCHEMA taxonomy
- Added `queries/lint-health-2026-04-27-all-subwikis.md` to index
- Refreshed index header total based on navigable pages
