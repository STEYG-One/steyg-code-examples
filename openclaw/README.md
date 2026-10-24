# OpenClaw

OpenClaw là trợ lý AI mã nguồn mở chạy nền, nhận việc qua Zalo, Telegram, Discord, Slack. Có hai cách thêm STEYG Code:

- **`openclaw onboard`**: chọn nhà cung cấp tuỳ chỉnh (Custom provider), nhập base URL `https://steyg.one/api/v1`, kiểu tương thích OpenAI, API key và model id. Nên nhập model id rõ ràng: khi tự dò, OpenClaw lấy model đầu danh sách làm mặc định.
- **File cấu hình**: chép `env.example` thành `~/.openclaw/.env` và điền key; chép `openclaw.json` vào `~/.openclaw/openclaw.json`, thay `MODEL_ID`; rồi chạy `openclaw gateway restart` và `openclaw models status`.

Kênh Zalo (đang thử nghiệm): tạo bot ở bot.zaloplatforms.com, điền `ZALO_BOT_TOKEN` trong `~/.openclaw/.env`, kiểm bằng `openclaw channels status --probe`, duyệt người nhắn lần đầu bằng `openclaw pairing approve zalo <MÃ>`.

Hướng dẫn đầy đủ, kể cả chi phí token của trợ lý chạy nền: [OpenClaw dùng API key](https://steyg.one/resources/openclaw-api-key-cau-hinh-provider?utm_source=github&utm_medium=repo&utm_campaign=seo-1025).
