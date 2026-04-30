#!/usr/bin/env python3
from __future__ import annotations

import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DASHBOARD = ROOT / 'references' / 'eval-dashboard.md'
RUNBOOK = ROOT / 'references' / 'eval-runbook.md'
# Only modules that have evals/ directories with evals.json
SKILLS = [
    'revit-plugin-dev-workflow',
    'revit-build-deploy',
    'revit-coding-patterns',
]

STATUS_EMOJI = {
    'PASS': '✅ 稳定',
    'PARTIAL': '🟡 观察',
    'FAIL': '❌ 失效',
    'BOOTSTRAP': '🟣 启动中',
}


def read_json(path: Path) -> dict:
    return json.loads(path.read_text())


def parse_result(path: Path) -> dict:
    text = path.read_text()
    def grab(pattern: str, default: str = '') -> str:
        m = re.search(pattern, text, re.M)
        return m.group(1).strip() if m else default
    return {
        'path': path,
        'run_id': grab(r'^- run_id: (.+)$'),
        'mode': grab(r'^- mode: (.+)$'),
        'verdict': grab(r'^- verdict: (.+)$'),
        'followups': re.findall(r'^- \[ \] (.+)$', text, re.M),
    }


def extract_core_points(skill: str, latest_run: str) -> list[str]:
    mapping = {
        'revit-plugin-dev-workflow': [
            '双图门禁 → 选插件线 → Wiki → Spec → Claude Code → build 主线',
            '明确拒绝 Windows 端改代码 / push',
        ],
        'revit-build-deploy': [
            'Ubuntu → GitLab → Windows 的 build/deploy 主线',
            'GitLab 故障时只允许 break-glass，不默认推荐 scp 野路子',
        ],
        'revit-coding-patterns': [
            'Phase 排序：数字按数值，非数字按 Collector 顺序，禁止 `Id.Value` 业务排序',
            'WPF 后台线程 PropertyChanged 跨线程修复模式',
        ],
    }
    extras = {
        ('revit-plugin-dev-workflow', 'run-003'): 'negative eval：拒绝让 Hermes 直接 patch Revit 源码',
        ('revit-build-deploy', 'run-003'): '高压语气下仍坚持先审批、后灾备',
        ('revit-coding-patterns', 'run-003'): '`ElementId.Value` API 迁移 ≠ Phase 业务排序规则',
    }
    points = list(mapping[skill])
    extra = extras.get((skill, latest_run))
    if extra:
        points.append(extra)
    return points


def render() -> str:
    rows = []
    sections = []
    followups_rows = []
    latest_labels = []

    for skill in SKILLS:
        skill_dir = ROOT / skill
        eval_json = read_json(skill_dir / 'evals' / 'evals.json')
        results = sorted((skill_dir / 'evals' / 'results').glob('*.md'))
        parsed = [parse_result(p) for p in results]
        bootstrap = next((r for r in parsed if r['mode'] == 'BOOTSTRAP'), None)
        non_bootstrap_runs = [r for r in parsed if r['mode'] != 'BOOTSTRAP']
        latest = parsed[-1] if parsed else None
        latest_run = latest['run_id'] if latest else 'n/a'
        latest_label = latest['path'].stem if latest else 'n/a'
        if latest:
            latest_labels.append(latest_label)
        verdict = latest['verdict'] if latest else 'BOOTSTRAP'
        mode = latest['mode'] if latest else 'BOOTSTRAP'
        status = STATUS_EMOJI.get(verdict, '🟡 观察')
        rows.append(f"| `{skill}` | {len(eval_json['evals'])} | `{latest_label}` | {mode} | {verdict} | {status} |")

        lines = [
            f"### {skill}",
            f"- eval 定义：`{skill}/evals/evals.json`",
        ]
        if bootstrap:
            lines.append(f"- bootstrap：`{skill}/evals/results/{bootstrap['path'].name}`")
        if non_bootstrap_runs:
            lines.append('- runs：')
            for r in non_bootstrap_runs:
                lines.append(f"  - `{skill}/evals/results/{r['path'].name}` ({r['mode']})")
        lines.append('- 核心验证点：')
        for point in extract_core_points(skill, latest['run_id'] if latest else ''):
            lines.append(f"  - {point}")
        sections.append('\n'.join(lines))

        if latest:
            for item in latest['followups']:
                followups_rows.append(f"| `{skill}` | {item} |")

    if not followups_rows:
        followups_rows.append('| — | 暂无未完成 follow-up |')

    latest_evidence = max(latest_labels) if latest_labels else 'n/a'

    return f"""# Revit Skill Eval Dashboard

_Last evidence: {latest_evidence}_

## 总览

| Skill | Evals | Latest Run | Mode | Verdict | Status |
|---|---:|---|---|---|---|
{chr(10).join(rows)}

## 运行记录索引

{chr(10).join(sections)}

## 未完成 Follow-ups

| Skill | Follow-up |
|---|---|
{chr(10).join(followups_rows)}

## 使用方式

- 看最新状态：先读本页「总览」
- 看证据：跳到对应 skill 的最新 `run-00x.md`
- 看规则：读 `references/eval-runbook.md`
- skill 改动后：更新对应 `results/run-00x.md`，再运行 `python3 scripts/refresh-eval-dashboard.py`
"""


def main() -> None:
    DASHBOARD.write_text(render())
    print(str(DASHBOARD))


if __name__ == '__main__':
    main()
