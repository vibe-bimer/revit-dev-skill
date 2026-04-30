#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="${1:-$(cd "$SCRIPT_DIR/.." && pwd)}"

if [ ! -d "$ROOT" ]; then
  echo "[guard] FAIL: scan root does not exist: $ROOT"
  exit 1
fi

echo "[guard] scanning: $ROOT"

RG_GLOBS=(
  --glob '*.md'
  --glob '*.html'
  --glob '*.yml'
  --glob '*.yaml'
  --glob '*.sh'
  --glob '*.py'
  --glob '*.jsonl'
  # Self/policy/test exclusions: these files necessarily contain forbidden examples/patterns.
  --glob '!**/scripts/check-revit-skill-guard.sh'
  --glob '!**/scripts/test-revit-skill-guard.sh'
  --glob '!**/references/guard-policy.md'
  # External corpus mirror/index payloads are not workflow docs; validate their
  # structure with the dedicated reference-sync checks below, not literal scans.
  --glob '!**/references/revit-corpus/**'
  --glob '!**/.venv/**'
  --glob '!**/node_modules/**'
)

# Runtime escape hatch for explicitly out-of-scope reference/wiki mirrors.
# Example: GUARD_SKIP='revit-plugin-dev-workflow/references/**' bash scripts/check-revit-skill-guard.sh .
if [ -n "${GUARD_SKIP:-}" ]; then
  read -r -a GUARD_SKIP_ITEMS <<< "$GUARD_SKIP"
  for extra in "${GUARD_SKIP_ITEMS[@]}"; do
    RG_GLOBS+=(--glob "!$extra" --glob "!**/$extra")
  done
fi

# 1) Legacy forbidden references / workflow drift
LEGACY_PATTERN='references/architecture\.md|references/revit-workflow-architecture|token: .*revit-build-server|/ token: .*revit-build-server \|'
if rg -n --hidden "${RG_GLOBS[@]}" "$LEGACY_PATTERN" "$ROOT"; then
  echo
  echo "[guard] FAIL: found forbidden legacy references"
  exit 1
fi

PHASE_ORDER_DRIFT_FILES=()
for file in \
  "$ROOT/revit-plugin-dev-workflow/SKILL.md" \
  "$ROOT/revit-build-deploy/SKILL.md"
do
  [ -f "$file" ] && PHASE_ORDER_DRIFT_FILES+=("$file")
done
if [ "${#PHASE_ORDER_DRIFT_FILES[@]}" -gt 0 ] && rg -n 'OrderBy\(p => p\.Id\.Value\)' "${PHASE_ORDER_DRIFT_FILES[@]}"; then
  echo
  echo "[guard] FAIL: found forbidden Phase-ordering anti-pattern outside coding references"
  exit 1
fi

EXTRA_CHECKS=(
  '绕过方案（scp 直传 Windows）'
)
for extra in "${EXTRA_CHECKS[@]}"; do
  if rg -n --hidden "${RG_GLOBS[@]}" "$extra" "$ROOT"; then
    echo
    echo "[guard] FAIL: found workflow drift pattern: $extra"
    exit 1
  fi
done

# 2) Private IP literals (RFC1918). Public docs should use placeholders.
PRIVATE_IP_PATTERN='\b(10\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}|192\.168\.[0-9]{1,3}\.[0-9]{1,3}|172\.(1[6-9]|2[0-9]|3[0-1])\.[0-9]{1,3}\.[0-9]{1,3})\b'
if rg -n --hidden "${RG_GLOBS[@]}" "$PRIVATE_IP_PATTERN" "$ROOT"; then
  echo
  echo "[guard] FAIL: found private IP literal; use env placeholders (e.g. \${REVIT_WINDOWS_HOST}, \${GITLAB_HOST})"
  exit 1
fi

# 3) Hardcoded password in sshpass (allow placeholders only)
SSHPASS_HITS="$(rg -n --hidden "${RG_GLOBS[@]}" "sshpass -p '[^']+'" "$ROOT" || true)"
if [ -n "$SSHPASS_HITS" ]; then
  BAD_SSHPASS="$(printf '%s\n' "$SSHPASS_HITS" \
    | rg -v -F "sshpass -p '***'" \
    | rg -v -F "sshpass -p '<WINDOWS_PASSWORD>'" \
    | rg -v -F "sshpass -p '\${WINDOWS_PASSWORD}'" \
    || true)"
  if [ -n "$BAD_SSHPASS" ]; then
    printf '%s\n' "$BAD_SSHPASS"
    echo
    echo "[guard] FAIL: found hardcoded sshpass password"
    exit 1
  fi
fi

# 4) Hardcoded oauth2 token in URL (allow placeholders only)
OAUTH_URL_HITS="$(rg -n --hidden "${RG_GLOBS[@]}" "oauth2:[^@]+@" "$ROOT" || true)"
if [ -n "$OAUTH_URL_HITS" ]; then
  BAD_OAUTH="$(printf '%s\n' "$OAUTH_URL_HITS" \
    | rg -v -F "oauth2:***@" \
    | rg -v -F "oauth2:<GITLAB_TOKEN>@" \
    | rg -v -F "oauth2:\${GITLAB_TOKEN}@" \
    || true)"
  if [ -n "$BAD_OAUTH" ]; then
    printf '%s\n' "$BAD_OAUTH"
    echo
    echo "[guard] FAIL: found hardcoded oauth token in URL"
    exit 1
  fi
fi

# 5) Personal absolute paths. Use portable placeholders instead.
HOME_HITS="$(rg -n --hidden "${RG_GLOBS[@]}" -F '/home/roky/' "$ROOT" || true)"
if [ -n "$HOME_HITS" ]; then
  BAD_HOME="$(printf '%s\n' "$HOME_HITS" \
    | rg -v -F 'revit-skill-governance/SKILL.md' \
    || true)"
  if [ -n "$BAD_HOME" ]; then
    printf '%s\n' "$BAD_HOME"
    echo
    echo "[guard] FAIL: found personal absolute path; use ~ for docs or \${HOME}/\${REVIT_*_PATH} for executable config"
    exit 1
  fi
fi

# 6) Nested .git directories and gitlinks (submodule/sync artifacts)
NESTED_GIT="$(find "$ROOT" -mindepth 2 -name '.git' -type d \
  -not -path '*/.venv/*' \
  -not -path '*/node_modules/*' \
  2>/dev/null || true)"
if [ -n "$NESTED_GIT" ]; then
  printf '%s\n' "$NESTED_GIT"
  echo
  echo "[guard] FAIL: found nested .git directory; run reference-sync cleanup before publishing"
  exit 1
fi

if git -C "$ROOT" rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  GITLINKS="$(git -C "$ROOT" ls-files --stage | awk '$1==160000{print $4}' || true)"
  if [ -n "$GITLINKS" ]; then
    printf '%s\n' "$GITLINKS"
    echo
    echo "[guard] FAIL: found gitlinks/submodule entries; mirror reference content without nested git metadata"
    exit 1
  fi
fi

# 7) Duplicate test tree artifacts (tests/tests/)
DUP_TESTS="$(find "$ROOT" -path '*/tests/tests' -type d \
  -not -path '*/.venv/*' \
  -not -path '*/node_modules/*' \
  2>/dev/null || true)"
if [ -n "$DUP_TESTS" ]; then
  printf '%s\n' "$DUP_TESTS"
  echo
  echo "[guard] FAIL: found tests/tests duplicate directory; delete the inner tests/ subtree"
  exit 1
fi

echo "[guard] PASS: all sensitive-literal and structural checks clean"
