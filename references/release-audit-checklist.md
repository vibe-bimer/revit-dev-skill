# Release Audit Checklist

Revit skill 仓库发布到公开仓库前的逐项审计清单。

## 1. 环境变量占位符化

- [ ] 主机/IP/凭据改为占位符：`${REVIT_WINDOWS_HOST}`、`${GITLAB_HOST}`、`${GITLAB_TOKEN}`、`${WINDOWS_PASSWORD}`
- [ ] `.env.revit-skill.example` 仅含模板，无真实值
- [ ] 真实值仅存于本地 `~/.config/revit-skill.env`（不入库）

## 2. 私有配置外置

- [ ] `.gitignore` 显式忽略：`*.local.env`、`*.secret`
- [ ] 无 `.env` 文件被 `git add`

## 3. Guard 门禁通过

- [ ] `bash scripts/check-revit-skill-guard.sh .` 全绿
- [ ] `bash scripts/test-revit-skill-guard.sh` fixture matrix 通过
- [ ] 所有 R1–R10 规则（见 `references/guard-policy.md`）均被拦截验证

## 4. Pre-commit Hook

- [ ] `bash scripts/install-precommit.sh <skills-root>` 已执行
- [ ] `<skills-root>/.git/hooks/pre-commit` 存在且可执行
- [ ] 安装脚本用 `cd <skills-root> && git rev-parse --git-path hooks/pre-commit`（非 `git -C` + 相对路径）

## 5. 去本机绝对路径

- [ ] guard R7 通过：无个人绝对路径残留
- [ ] 文档展示用 `~/...`，可执行配置用 `${HOME}` / `${REVIT_*_PATH}`
- [ ] `references/revit-corpus/index/*.jsonl` 中绝对路径已重写或 guard 默认排除

## 6. 嵌套 Git 清理

- [ ] `find . -mindepth 2 -name .git -type d` 为空
- [ ] `git ls-files --stage | awk '$1==160000'` 为空（无 gitlink）
- [ ] `find . -path '*/tests/tests' -type d` 为空

## 7. 双远端一致性

- [ ] `git remote -v` 显示 `origin`（GitLab）和 `github`（GitHub）两个远端
- [ ] 若 GitHub URL 变更：`git remote set-url github <new-url>`
- [ ] 推送：`git push origin main && git push github main`
- [ ] 验证：`git ls-remote --heads origin` 与 `git ls-remote --heads github` 的 `main` 指向一致

## 8. 引用资料单向镜像

- [ ] 同步脚本使用 `rsync -a --delete`，排除 `.git/` `.gitmodules` `.gitattributes`
- [ ] 同步后二次清理残留 `.git` 目录
- [ ] 不反向写回源仓

## 9. Eval 证据完整性

- [ ] 各 eval-enabled skill 的 `evals/evals.json` 与 `results/` 一致
- [ ] `python3 scripts/refresh-eval-dashboard.py` 成功
- [ ] `references/eval-dashboard.md` 指向最新 result

## 10. 文档无漂移

- [ ] 拓扑/SOP 图版本与 SKILL.md 引用一致
- [ ] icon 同步点描述与实际代码一致（PNG 文件 vs `.addin` 字段）
- [ ] 无遗留 `architecture.md` / `topology-v3` 等过时引用
