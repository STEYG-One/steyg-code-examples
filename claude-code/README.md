# Claude Code

Claude Code nói giao thức Anthropic Messages và đọc cấu hình từ biến môi trường. Có hai cách, chọn một:

- **Shell** (`env.sh`): hợp khi chỉ chạy Claude Code trong terminal.
- **`~/.claude/settings.json`** (`settings.json`): áp cho mọi phiên, kể cả agent chạy nền mà biến export trong shell không tới được. Đặt ở thư mục home, **không** đặt vào `.claude/settings.json` của dự án vì file đó thường được commit.

## Các bước

1. Lấy model id bằng `../scripts/list-models.sh`. Chọn một model Claude cho phiên chính (`MODEL_CHINH`) và một model Claude nhẹ hơn cho tác vụ nền, alias `haiku` (`MODEL_NHANH`).
2. Cách shell: `MODEL_CHINH=<id> MODEL_NHANH=<id> source claude-code/env.sh`, rồi chạy `claude`.
   Cách settings: chép nội dung `settings.json` vào `~/.claude/settings.json`, thay `<API key STEYG Code của bạn>`, `MODEL_CHINH`, `MODEL_NHANH`.
3. Thử kết nối trước khi mở Claude Code: `./claude-code/verify.sh <MODEL_NHANH>`. Lỗi lúc này chỉ có thể do base URL hoặc key.
4. Trong Claude Code, gõ `/status` để thấy base URL và model đang dùng.

Hướng dẫn đầy đủ, kể cả lỗi hay gặp: [Claude Code dùng API key](https://steyg.one/resources/claude-code-api-key-anthropic-base-url?utm_source=github&utm_medium=repo&utm_campaign=seo-1025).
