#!/usr/bin/env bash
# Request Chat Completions mẫu. Dùng: ./sdk/curl/chat-completions.sh <model-id>
set -euo pipefail
: "${STEYG_CODE_API_KEY:?Chưa đặt biến STEYG_CODE_API_KEY}"
model="${1:?Dùng: ./sdk/curl/chat-completions.sh <model-id>}"
if [[ ! "$model" =~ ^[A-Za-z0-9._/:-]+$ ]]; then
  echo "Model id không hợp lệ: $model" >&2
  exit 1
fi

curl -sS https://steyg.one/api/v1/chat/completions \
  -H "Authorization: Bearer ${STEYG_CODE_API_KEY}" \
  -H "Content-Type: application/json" \
  -d "{\"model\":\"${model}\",\"max_tokens\":256,\"messages\":[{\"role\":\"user\",\"content\":\"Viết hàm Python đảo ngược một chuỗi\"}]}"
echo
