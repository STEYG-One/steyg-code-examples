# Open WebUI

Open WebUI là giao diện chat tự cài, nối được với mọi API tương thích OpenAI.

Cài bằng Docker (thay `your-secret-key` bằng một chuỗi ngẫu nhiên cố định, ví dụ kết quả của `openssl rand -hex 32`, để không bị đăng xuất mỗi lần tạo lại container), rồi mở `http://localhost:3000`:

```bash
docker run -d -p 3000:8080 --add-host=host.docker.internal:host-gateway \
  -v open-webui:/app/backend/data -e WEBUI_SECRET_KEY=your-secret-key \
  --name open-webui --restart always ghcr.io/open-webui/open-webui:main
```

Nối STEYG Code:

1. Vào **Settings → Admin → Connections**, tìm danh sách **Manage OpenAI API Connections**.
2. Bấm **+ Add Connection**: **URL** là `https://steyg.one/api/v1`, **API Key** là key STEYG Code của bạn.
3. Bấm **Verify Connection** để Open WebUI tải danh sách model từ `/models`, rồi **Save**. Lưu kết nối chưa có nghĩa là đã kiểm tra.

Đặt key qua giao diện quản trị như trên thay vì ghi vào file compose nằm trong repo.

Hướng dẫn liên quan, kể cả chạy model trên máy bằng Ollama: [Ollama là gì](https://steyg.one/resources/ollama-la-gi?utm_source=github&utm_medium=repo&utm_campaign=seo-1025).
