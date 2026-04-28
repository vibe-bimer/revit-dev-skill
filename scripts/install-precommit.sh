#!/usr/bin/env bash
set -euo pipefail

TARGET_DIR="${1:-$(pwd)}"

if [ ! -d "$TARGET_DIR" ]; then
  echo "[install] FAIL: target dir not found: $TARGET_DIR"
  exit 1
fi

cd "$TARGET_DIR"

GUARD_SCRIPT="$TARGET_DIR/scripts/check-revit-skill-guard.sh"
if [ ! -f "$GUARD_SCRIPT" ]; then
  echo "[install] FAIL: guard script not found: $GUARD_SCRIPT"
  exit 1
fi

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "[install] FAIL: $TARGET_DIR is not a git repository."
  echo "[install] Hint: git init (or clone repo) first, then rerun this script."
  exit 2
fi

HOOK_PATH="$(git rev-parse --git-path hooks/pre-commit)"
mkdir -p "$(dirname "$HOOK_PATH")"

cat > "$HOOK_PATH" <<'HOOK'
#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
GUARD="$ROOT/scripts/check-revit-skill-guard.sh"

if [ ! -x "$GUARD" ]; then
  echo "[pre-commit] FAIL: missing executable guard script: $GUARD"
  exit 1
fi

bash "$GUARD" "$ROOT"
HOOK

chmod +x "$HOOK_PATH"
chmod +x "$GUARD_SCRIPT"

echo "[install] OK: pre-commit hook installed at $TARGET_DIR/$HOOK_PATH"
