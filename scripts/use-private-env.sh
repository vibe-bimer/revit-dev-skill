#!/usr/bin/env bash
set -euo pipefail

ENV_FILE="${REVIT_SKILL_ENV_FILE:-$HOME/.config/revit-skill.env}"
if [ -f "$ENV_FILE" ]; then
  # shellcheck source=/dev/null
  source "$ENV_FILE"
else
  echo "[env] WARN: $ENV_FILE not found. Using current environment only."
fi

if [ "$#" -eq 0 ]; then
  echo "[env] loaded from: $ENV_FILE"
  echo "[env] REVIT_WINDOWS_HOST=${REVIT_WINDOWS_HOST:-<unset>}"
  echo "[env] GITLAB_HOST=${GITLAB_HOST:-<unset>}"
  exit 0
fi

exec "$@"
