# n8n

n8n nối model AI vào workflow qua node AI Agent hoặc Basic LLM Chain cùng một node con chat model. Credential OpenAI của n8n có trường **Base URL** (từ bản 1.73.0, dù trang tài liệu về credential chưa ghi), nên trỏ được sang STEYG Code.

1. Vào **Credentials**, tạo credential loại **OpenAI**: API Key là key STEYG Code của bạn, **Base URL** là `https://steyg.one/api/v1` (giữ `/v1` ở cuối). Lưu lại; n8n kiểm tra bằng cách gọi `/models`.
2. Trong workflow, thêm **AI Agent** (hoặc Basic LLM Chain), gắn node con **OpenAI Chat Model**, chọn credential vừa tạo.
3. Ô **Model**: chuyển sang chế độ **ID** và gõ đúng model id lấy từ `../scripts/list-models.sh`.
4. Trong **Options** của OpenAI Chat Model, tắt **Use Responses API**. Từ node v1.3 (n8n 1.119.0) công tắc này bật sẵn và gửi request tới `/responses`; tắt đi để node gọi `/chat/completions`, chạy được với mọi model trong danh mục.

Muốn dùng giao thức Anthropic cho model Claude: tạo credential **Anthropic** với Base URL `https://steyg.one/api` (không có `/v1`, vì n8n tự nối `/v1/messages`), rồi dùng node **Anthropic Chat Model**.

Lỗi hay gặp:

- `The resource you are requesting could not be found`: Use Responses API còn bật, Base URL của credential OpenAI thiếu `/v1`, hoặc credential Anthropic thừa `/v1`.
- `Authorization failed - please check your credentials`: key sai hoặc đã bị thu hồi.
- `Payment required - perhaps check your payment details?`: ngân sách STEYG Code đã tiêu hết; mua thêm ngân sách thì key cũ chạy tiếp.

Hướng dẫn đầy đủ, kể cả cài n8n bằng Docker: [n8n là gì](https://steyg.one/resources/n8n-la-gi?utm_source=github&utm_medium=repo&utm_campaign=seo-1025).
