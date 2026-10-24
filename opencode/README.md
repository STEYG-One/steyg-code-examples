# OpenCode

Nhà cung cấp tuỳ chỉnh khai trong `opencode.json`: đặt ở thư mục dự án để áp cho riêng dự án đó, hoặc ở file cấu hình chung của OpenCode để áp cho mọi dự án. Key đọc bằng cú pháp `{env:STEYG_CODE_API_KEY}`.

1. Chép `opencode.json`, thay `MODEL_ID` bằng id lấy từ `../scripts/list-models.sh`; muốn nhiều model thì thêm nhiều mục trong `models`.
2. Đặt `limit.context` và `limit.output` khớp với model để OpenCode biết khi nào phải tóm gọn ngữ cảnh.
3. Mở `opencode`, gõ `/models` và chọn model của nhà cung cấp STEYG Code.

Hướng dẫn đầy đủ: [OpenCode dùng API key](https://steyg.one/resources/opencode-api-key-cau-hinh-provider?utm_source=github&utm_medium=repo&utm_campaign=seo-1025).
