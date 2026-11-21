#!/usr/bin/env bash
# Link the pi coding agent model credentials into the agent config directory.
# Never fails: any problem is reported as a warning and the script exits 0.
set -uo pipefail

SECRETS_DIR="${RENKU_SECRETS_PATH:-/secrets}"
SRC="${SECRETS_DIR}/pi-agent-models.json"
DEST_DIR="${PI_CODING_AGENT_DIR:-/home/renku/work/.pi}"
DEST="${DEST_DIR}/models.json"

warn() {
  echo "[01-setup-ai-creds] WARNING: $*" >&2
  exit 0
}

[[ -f "$SRC" ]] || warn "$SRC not found, skipping."
mkdir -p "$DEST_DIR" || warn "could not create $DEST_DIR, skipping."
ln -sfn "$SRC" "$DEST" || warn "could not link $SRC -> $DEST, skipping."

echo "[01-setup-ai-creds] Linked $SRC -> $DEST"
