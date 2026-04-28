#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="${1:-$(cd "$SCRIPT_DIR/.." && pwd)}"

echo "[guard] scanning: $ROOT"

RG_GLOBS=(
  --glob '*.md'
  --glob '*.html'
  --glob '*.yml'
  --glob '*.yaml'
  --glob '*.sh'
  --glob '*.py'
  --glob '!**/scripts/check-revit-skill-guard.sh'
)

# 1) Legacy forbidden references / workflow drift
LEGACY_PATTERN="references/architecture\\.md|references/revit-workflow-architecture|token: .*revit-build-server|/ token: .*revit-build-server \\|"
if rg -n --hidden "${RG_GLOBS[@]}" "$LEGACY_PATTERN" "$ROOT"; then
  echo
  echo "[guard] FAIL: found forbidden legacy references"
  exit 1
fi

EXTRA_CHECKS=(
  'OrderBy\\(p => p\\.Id\\.Value\\)'
  '绕过方案（scp 直传 Windows）'
)
for extra in "${EXTRA_CHECKS[@]}"; do
  if rg -n --hidden --glob '*.md' --glob '*.html' "$extra" "$ROOT"; then
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

echo "[guard] PASS: no sensitive literals found"
