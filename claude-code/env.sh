# Dùng: MODEL_CHINH=<id> MODEL_NHANH=<id> source claude-code/env.sh
# Key đọc từ STEYG_CODE_API_KEY đã đặt sẵn trong shell; file này không chứa key.
: "${STEYG_CODE_API_KEY:?Chưa đặt biến STEYG_CODE_API_KEY}"
: "${MODEL_CHINH:?Đặt MODEL_CHINH = model id cho phiên chính (xem scripts/list-models.sh)}"
: "${MODEL_NHANH:?Đặt MODEL_NHANH = model id cho tác vụ nền, alias haiku}"

export ANTHROPIC_BASE_URL="https://steyg.one/api"
export ANTHROPIC_AUTH_TOKEN="$STEYG_CODE_API_KEY"
export ANTHROPIC_MODEL="$MODEL_CHINH"
export ANTHROPIC_DEFAULT_OPUS_MODEL="$MODEL_CHINH"
export ANTHROPIC_DEFAULT_SONNET_MODEL="$MODEL_CHINH"
# Alias fable và best (Claude Code 2.1.280+): trỏ về model đang bán thay vì model không có trong danh mục.
export ANTHROPIC_DEFAULT_FABLE_MODEL="$MODEL_CHINH"
export ANTHROPIC_DEFAULT_HAIKU_MODEL="$MODEL_NHANH"
# Tên cũ của alias haiku, bản Claude Code cũ vẫn đọc.
export ANTHROPIC_SMALL_FAST_MODEL="$MODEL_NHANH"
