#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PLUGIN_NAME="specdev-cursor-plugin"
PLUGIN_LOCAL="${HOME}/.cursor/plugins/local/${PLUGIN_NAME}"

mkdir -p "${HOME}/.cursor/plugins/local"

# Cursor rejects symlinks whose target is outside ~/.cursor/plugins/local.
if [[ -L "${PLUGIN_LOCAL}" ]]; then
  rm "${PLUGIN_LOCAL}"
fi

rsync -a --delete \
  --exclude '.git' \
  --exclude '.cursor' \
  "${ROOT}/" "${PLUGIN_LOCAL}/"

echo "Synced plugin to ${PLUGIN_LOCAL}"
echo "Reload Cursor: Cmd+Shift+P → Developer: Reload Window"
