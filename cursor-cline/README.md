# Cursor, Cline, Kilo Code

Ba công cụ này cấu hình qua giao diện, không qua file.

## Cursor

Settings → Models, bật OpenAI API Key và điền:

```text
OpenAI API Key:           (API key STEYG Code của bạn)
Override OpenAI Base URL: https://steyg.one/api/v1
Custom model:             steyg/MODEL_ID
```

Tiền tố `steyg/` giữ cho Cursor không lẫn với model cài sẵn cùng tên (tên bắt đầu bằng `claude-` sẽ bị gửi qua ô key Anthropic). Tab (gợi ý khi gõ) luôn dùng model riêng của Cursor; key riêng chỉ áp cho chat và Agent.

## Cline

Ở API Provider chọn **OpenAI Compatible**: Base URL `https://steyg.one/api/v1`, API key của bạn, Model ID lấy từ `../scripts/list-models.sh`. Mở Model Configuration, đặt Context Window Size và Max Output Tokens khớp với model. Với model Claude, có thể chọn nhà cung cấp Anthropic, bật Use custom base URL và điền `https://steyg.one/api`.

## Kilo Code

Settings → Providers → Custom provider, Provider API là **OpenAI Compatible**, Base URL `https://steyg.one/api/v1`, điền API key; danh sách model lấy tự động từ `/v1/models`.

Hướng dẫn đầy đủ: [Cursor, Cline dùng API key riêng](https://steyg.one/resources/cau-hinh-cursor-cline-claude-code-voi-steyg-code?utm_source=github&utm_medium=repo&utm_campaign=seo-1025). Cursor chỉ cho dùng key riêng từ gói Premium trở lên (gói Free và Plus không có); thông báo lỗi và cách sửa: [lỗi Cursor khi dùng API key riêng](https://steyg.one/resources/loi-cursor-api-key-thuong-gap?utm_source=github&utm_medium=repo&utm_campaign=seo-1025).
