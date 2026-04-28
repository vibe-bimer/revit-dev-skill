---
title: Revit Corpus Access
created: 2026-04-26
updated: 2026-04-26
type: concept
tags: [revit-api, 数据库, 工作流自动化]
sources: [local]
confidence: high
---

# Revit Corpus Access

本页定义 Revit 二次开发 AI 工作流的检索路径与语料位置。

## 语料位置
- Raw corpus: `${REVIT_CORPUS_PATH}/raw/revit-2026/`
- CHM converter corpus: `${REVIT_CORPUS_PATH}/chm-converter/output/revit-2026/`
- Machine index: `${REVIT_CORPUS_PATH}/index/`
  - `symbol_index.jsonl`
  - `fts.db`
  - `chunk_map.jsonl`

## 查询顺序（强制）
1. 先查 Wiki：`entities/` + `concepts/`
2. 再查索引：`symbol_index.jsonl` / `fts.db`
3. 最后查原文：`raw/revit-2026` 与 `chm-converter/output/revit-2026`

## 回答输出要求
- 输出 API 结论时，必须附 `source_path`（可追溯）
- 优先返回签名与版本信息，再返回长原文段落
- 原文冲突时，以日期更新的源为主，并在结论中标注冲突

相关页：[[revit-api-reference]] [[filtered-element-collector]] [[transaction-system]]
