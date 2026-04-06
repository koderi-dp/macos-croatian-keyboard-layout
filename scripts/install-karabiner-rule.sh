#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
SOURCE_FILE="$REPO_DIR/karabiner/lenovo-windows-croatian.json"
TARGET_DIR="$HOME/.config/karabiner/assets/complex_modifications"
TARGET_FILE="$TARGET_DIR/lenovo-windows-croatian.json"

mkdir -p "$TARGET_DIR"
cp "$SOURCE_FILE" "$TARGET_FILE"

echo "Installed Karabiner rule to: $TARGET_FILE"
echo "Now open Karabiner-Elements > Complex Modifications > Add predefined rule and enable: Lenovo Windows Croatian behavior"
