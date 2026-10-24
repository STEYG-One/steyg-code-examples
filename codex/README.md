# Codex CLI

Codex CLI khai báo nhà cung cấp riêng trong `~/.codex/config.toml`. Mẫu `config.toml` đọc key từ biến môi trường bằng `env_key`, nên file không chứa key.

1. Chép nội dung `config.toml` vào `~/.codex/config.toml` (thêm vào file sẵn có nếu đã có).
2. Thay `MODEL_ID` bằng một model GPT lấy từ `../scripts/list-models.sh`.
3. Mở terminal mới có biến `STEYG_CODE_API_KEY`, chạy `codex` trong thư mục dự án, gõ `/status` để thấy model và nhà cung cấp đang dùng.

Lưu ý: id nhà cung cấp không được trùng id có sẵn (`openai`, `ollama`, `lmstudio`), và `wire_api` chỉ còn `responses`.

Hướng dẫn đầy đủ: [Codex CLI với API key riêng](https://steyg.one/resources/codex-cli-api-key-config-toml?utm_source=github&utm_medium=repo&utm_campaign=seo-1025). Hết hạn mức gói ChatGPT: [Codex hết hạn mức](https://steyg.one/resources/codex-het-han-muc-gioi-han-5-gio-va-theo-tuan?utm_source=github&utm_medium=repo&utm_campaign=seo-1025).
