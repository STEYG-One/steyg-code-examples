#!/usr/bin/env bash
# In ra model id đang bán, mỗi dòng một id. Cần biến STEYG_CODE_API_KEY.
set -euo pipefail
: "${STEYG_CODE_API_KEY:?Chưa đặt biến STEYG_CODE_API_KEY}"

response="$(curl -fsS https://steyg.one/api/v1/models -H "Authorization: Bearer ${STEYG_CODE_API_KEY}")"

if command -v jq >/dev/null 2>&1; then
  printf '%s' "$response" | jq -r '.data[].id'
else
  printf '%s' "$response" | python3 -c 'import json, sys; print("\n".join(m["id"] for m in json.load(sys.stdin)["data"]))'
fi
