#!/usr/bin/env bash
# Gửi một request rất nhỏ tới endpoint Messages để kiểm base URL và key trước khi mở Claude Code.
# Dùng: ./claude-code/verify.sh <model-id>
set -euo pipefail
: "${STEYG_CODE_API_KEY:?Chưa đặt biến STEYG_CODE_API_KEY}"
model="${1:?Dùng: ./claude-code/verify.sh <model-id>}"
if [[ ! "$model" =~ ^[A-Za-z0-9._/:-]+$ ]]; then
  echo "Model id không hợp lệ: $model" >&2
  exit 1
fi

curl -sS "https://steyg.one/api/v1/messages" \
  -H "Authorization: Bearer ${STEYG_CODE_API_KEY}" \
  -H "anthropic-version: 2023-06-01" \
  -H "content-type: application/json" \
  -d "{\"model\":\"${model}\",\"max_tokens\":16,\"messages\":[{\"role\":\"user\",\"content\":\"ping\"}]}"
echo
