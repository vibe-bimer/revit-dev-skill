#!/usr/bin/env bash
set -euo pipefail

# Guard fixture matrix — validates every rule in check-revit-skill-guard.sh
# by constructing synthetic repos that should FAIL or PASS.
# Designed to run from any cwd.
#
# Usage: bash scripts/test-revit-skill-guard.sh
# Also run after guard logic changes: bash scripts/test-revit-skill-guard.sh

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
GUARD="$SCRIPT_DIR/check-revit-skill-guard.sh"

if [ ! -f "$GUARD" ]; then
  echo "FAIL: guard script not found: $GUARD" >&2
  exit 1
fi

TMP="$(mktemp -d)"
cleanup() { rm -rf "$TMP"; }
trap cleanup EXIT

fail_count=0
pass_count=0

run_fail() {
  local name="$1"; shift
  local dir="$TMP/$name"
  mkdir -p "$dir"
  ( cd "$dir" && "$@" )
  if bash "$GUARD" "$dir" >"$TMP/${name}.out" 2>&1; then
    echo "FAIL expected but guard passed: $name" >&2
    cat "$TMP/${name}.out" >&2
    exit 1
  fi
  fail_count=$((fail_count + 1))
}

run_pass() {
  local name="$1"; shift
  local dir="$TMP/$name"
  mkdir -p "$dir"
  ( cd "$dir" && "$@" )
  bash "$GUARD" "$dir" >"$TMP/${name}.out" 2>&1
  pass_count=$((pass_count + 1))
}

# ── expected FAIL cases (10) ──────────────────────────────────────

# 1) Legacy forbidden references / architecture.md drift
run_fail legacy bash -lc 'echo "see references/architecture.md for details" > bad.md'

# 2) Phase ordering anti-pattern in mainline skill
run_fail phase bash -lc 'mkdir -p revit-plugin-dev-workflow; echo "OrderBy(p => p.Id.Value)" > revit-plugin-dev-workflow/SKILL.md'

# 3) scp bypass wording
run_fail scp-drift bash -lc 'echo "绕过方案（scp 直传 Windows）" > bad.md'

# 4) RFC1918 private IP literal (192.168.x.x)
run_fail private-ip bash -lc 'echo "server at 192.168.1.100" > bad.md'

# 5) Hardcoded sshpass password (plaintext)
run_fail sshpass bash -lc "echo \"sshpass -p 'plainpass' ssh host\" > bad.sh"

# 6) Hardcoded OAuth token in URL
run_fail oauth bash -lc 'echo "http://oauth2:real-token@gitlab/repo" > bad.md'

# 7) Personal absolute path (/home/roky/)
run_fail personal-home bash -lc 'echo "copy from /home/roky/revit-plugin-dev" > bad.md'

# 8) Nested .git directory (submodule/sync artifact)
run_fail nested-git bash -lc 'mkdir -p vendor/foo/.git'

# 9) Duplicate tests/tests/ directory
run_fail duplicate-tests bash -lc 'mkdir -p src/tests/tests'

# 10) Gitlink/submodule entry
run_fail gitlink bash -lc 'git init -q; git update-index --add --cacheinfo 160000,1111111111111111111111111111111111111111,refs/revit-api'

# ── expected PASS cases (2) ───────────────────────────────────────

# 11) Valid placeholders (*** and env-var forms)
run_pass placeholders bash -lc "echo \"sshpass -p '***' ssh host\" > good.sh; echo 'http://oauth2:***@gitlab/repo' > good.md"

# 12) GUARD_SKIP excludes reference subtree
skip_dir="$TMP/guard-skip-references"
mkdir -p "$skip_dir/revit-plugin-dev-workflow/references"
echo 'path /home/roky/ignored' > "$skip_dir/revit-plugin-dev-workflow/references/wiki.md"
GUARD_SKIP='revit-plugin-dev-workflow/references/**' bash "$GUARD" "$skip_dir" >"$TMP/guard-skip-references.out" 2>&1
pass_count=$((pass_count + 1))

echo "fixture matrix PASS: ${fail_count} expected FAIL checks + ${pass_count} expected PASS checks verified"
