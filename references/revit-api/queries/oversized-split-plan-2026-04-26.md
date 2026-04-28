---
title: Oversized Split Plan 2026-04-26
created: 2026-04-26
updated: 2026-04-26
type: query
tags: [comparison, 实践案例, speckle]
sources: [queries/lint-remediation-2026-04-26.md]
confidence: high
---

# Oversized Split Plan（19 pages）

目标：把 >200 行页面拆成“总览页 + 子专题页”，每个子页控制在 120~220 行，并保持双向 wikilink。

## 拆分原则
- 总览页保留：定义、边界、导航目录、核心结论。
- 子页承载：流程细节、代码片段、案例、FAQ。
- 每次拆分后更新 `index.md`，并在原页顶部加“已拆分导航”。

## 执行批次

### Batch 1（先拆 >900 行，5页）
| 页面 | 行数 | 建议子页 |
|---|---:|---|
| `speckle/connectors/07-extension-points.md` | 1371 | `07a-converter-extension.md`, `07b-filter-extension.md`, `07c-unpack-strategy.md`, `07d-extension-cookbook.md` |
| `speckle/connectors/04-send-pipeline.md` | 1184 | `04a-send-entry-and-context.md`, `04b-converter-and-serialize.md`, `04c-upload-and-commit.md`, `04d-send-failure-modes.md` |
| `speckle/connectors/05-receive-pipeline.md` | 1171 | `05a-receive-entry-and-fetch.md`, `05b-unpack-and-build.md`, `05c-transaction-and-apply.md`, `05d-receive-failure-modes.md` |
| `speckle/server/12-server-connector-protocol.md` | 966 | `12a-rest-transfer.md`, `12b-graphql-flow.md`, `12c-auth-and-sessions.md`, `12d-protocol-observability.md` |
| `speckle/server/09-server-graphql-api.md` | 948 | `09a-schema-and-resolvers.md`, `09b-mutation-patterns.md`, `09c-subscriptions.md`, `09d-graphql-hardening.md` |

### Batch 2（700~900 行，4页）
| 页面 | 行数 | 建议子页 |
|---|---:|---|
| `speckle/docs/16-docs-connector-sdk.md` | 812 | `16a-sdk-overview.md`, `16b-sdk-auth-and-client.md`, `16c-sdk-objects-and-transport.md` |
| `speckle/server/10-server-data-layer.md` | 765 | `10a-postgresql-modeling.md`, `10b-redis-caching.md`, `10c-storage-and-blob.md`, `10d-data-migrations.md` |
| `speckle/connectors/02-converter-architecture.md` | 751 | `02a-root-converter.md`, `02b-name-rank-value.md`, `02c-type-matching-rules.md`, `02d-converter-debugging.md` |
| `speckle/server/11-server-auth.md` | 733 | `11a-token-oauth2.md`, `11b-role-permissions.md`, `11c-auth-hardening.md` |

### Batch 3（500~700 行，5页）
| 页面 | 行数 | 建议子页 |
|---|---:|---|
| `speckle/connectors/08-build-system.md` | 586 | `08a-solution-layout.md`, `08b-multi-revit-targeting.md`, `08c-packaging-and-ci.md` |
| `speckle/docs/15-docs-api-reference.md` | 559 | `15a-graphql-reference.md`, `15b-rest-reference.md`, `15c-auth-samples.md` |
| `speckle/connectors/01-revit-connector-entry-di.md` | 554 | `01a-entrypoints.md`, `01b-autofac-registration.md`, `01c-version-diffs.md` |
| `speckle/server/13-server-deployment.md` | 538 | `13a-docker-topology.md`, `13b-env-and-secrets.md`, `13c-prod-checklist.md` |
| `speckle/connectors/03-dui3-ui-framework.md` | 436 | `03a-cefsharp-era.md`, `03b-webview2-era.md`, `03c-ui-bridge-and-state.md` |

### Batch 4（200~450 行，5页）
| 页面 | 行数 | 建议子页 |
|---|---:|---|
| `speckle/docs/14-docs-revit-guide.md` | 434 | `14a-user-workflow.md`, `14b-revit-known-issues.md` |
| `revit-toolkit-guide.md` | 396 | `revit-toolkit-guide-project-layout.md`, `revit-toolkit-guide-debug-deploy.md` |
| `speckle/concepts/06-objects-data-model.md` | 378 | `06a-base-object-model.md`, `06b-serialization-rules.md` |
| `revit-api-reference.md` | 369 | `revit-api-reference-query-patterns.md`, `revit-api-reference-transactions.md` |
| `queries/common-patterns.md` | 226 | `queries/common-patterns-query.md`, `queries/common-patterns-write.md` |

## 完成定义（DoD）
- 原页行数降到 ≤220。
- 每个子页至少 2 个出链，且原页与子页双向链接。
- `index.md` 新增条目并保持分组可导航。
- `log.md` 记录批次与变更文件列表。

关联：[[queries/lint-health-2026-04-26|Lint Health 2026-04-26]]、[[queries/lint-remediation-2026-04-26|Lint Remediation 2026-04-26]]
