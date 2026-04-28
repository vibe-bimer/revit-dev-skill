# Revit Skills Eval Runbook

> 目的：让 `evals/evals.json` 不只是骨架，而是能持续沉淀 **pass/fail 证据链**。

## 适用范围

- `revit-plugin-dev-workflow`
- `revit-build-deploy`
- `revit-coding-patterns`

## 记录原则

1. 每次 skill 有实质更新后，至少跑一轮 eval。
2. 结果要写入 `evals/results/<date>-run-<n>.md`。
3. 每条 eval 只允许三种结论：`PASS` / `FAIL` / `PARTIAL`。
4. 失败必须写 **具体原因**，不能只写“效果不好”。
5. 如果本轮只是建骨架、尚未真实跑模型，要明确标记为 `BOOTSTRAP`，不能冒充已验证。

## 结果文件模板

```md
# <skill-name> eval run
- date: YYYY-MM-DD
- run_id: run-001
- operator: Hermes
- mode: BOOTSTRAP | MANUAL_REVIEW | LIVE_RUN
- skill_version: <optional>

## Summary
- total: N
- pass: N
- partial: N
- fail: N
- verdict: PASS | PARTIAL | FAIL

## Case Results
### <eval-id>
- status: PASS | PARTIAL | FAIL
- prompt: ...
- expectation: ...
- observed: ...
- evidence: ...
- notes: ...

## Follow-ups
- [ ] item 1
- [ ] item 2
```

## 模式说明

### BOOTSTRAP
- 用于第一次建立结果记录体系
- 允许只写“待执行/待人工实跑”的状态
- 不能声称 skill 已通过真实 eval

### MANUAL_REVIEW
- 人工对照 `evals/evals.json` 和当前 skill 文案逐条检查
- 适合结构性规则类 skill

### LIVE_RUN
- 真实让代理/模型按 prompt 执行并评估输出
- 这是后续应该逐步增加的主力模式

## 最小落地要求

首轮至少要有：
- 每个核心 skill 一个 `results/` 目录
- 一份 bootstrap 结果文件
- Summary + Case Results + Follow-ups 三段齐全
