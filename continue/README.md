# Continue

Continue khai báo model trong `~/.continue/config.yaml`; mỗi model có `provider: openai`, `apiBase` và `apiKey`. Thêm `capabilities: [tool_use]` để dùng chế độ Agent.

1. Chép `config.yaml`, thay `MODEL_ID` bằng id lấy từ `../scripts/list-models.sh`.
2. Khai secret `STEYG_CODE_API_KEY` theo cách Continue đọc secret (biến `${{ secrets.STEYG_CODE_API_KEY }}` trong mẫu).

Hướng dẫn đầy đủ: [Cursor, Cline, Continue dùng API key riêng](https://steyg.one/resources/cau-hinh-cursor-cline-claude-code-voi-steyg-code?utm_source=github&utm_medium=repo&utm_campaign=seo-1025).
