# Mẫu cấu hình coding agent cho STEYG Code

Mẫu cấu hình để chạy **Claude Code, Codex CLI, OpenCode, OpenClaw, Cursor, Cline, Continue** và **OpenAI SDK** bằng một API key [STEYG Code](https://steyg.one/?utm_source=github&utm_medium=repo&utm_campaign=seo-1025). Cùng một key gọi được model Claude, GPT, DeepSeek, GLM, Qwen qua endpoint OpenAI-compatible và Anthropic Messages. Ngân sách trả trước bằng VND, tiêu hết thì request dừng, không bao giờ bị tính quá số tiền đã trả.

> **English:** Ready-to-use configuration templates for Claude Code, Codex CLI, OpenCode, OpenClaw, Cursor, Cline, Continue and the OpenAI SDK with one STEYG Code API key (OpenAI-compatible and Anthropic Messages endpoints).

## Thông số chung

| Thông số | Giá trị |
| --- | --- |
| Base URL OpenAI-compatible | `https://steyg.one/api/v1` |
| Base URL Anthropic Messages (Claude Code) | `https://steyg.one/api` |
| Biến môi trường chứa key trong mọi mẫu | `STEYG_CODE_API_KEY` |
| Danh sách model id đang bán | `GET https://steyg.one/api/v1/models` hoặc [`scripts/list-models.sh`](scripts/list-models.sh) |

Model id thay đổi theo danh mục, nên các mẫu để chỗ giữ `MODEL_ID` (hoặc `MODEL_CHINH`, `MODEL_NHANH` với Claude Code). Chạy script ở trên để lấy id thật rồi thay vào.

## Bắt đầu trong 4 bước

1. Tạo API key tại [steyg.one](https://steyg.one/?utm_source=github&utm_medium=repo&utm_campaign=seo-1025). Tài khoản mới có hạn mức dùng thử, không cần thẻ.
2. Đặt key vào biến môi trường, **không** ghi vào file trong repo:
   ```bash
   # macOS, Linux: thêm vào ~/.zshrc hoặc ~/.bashrc
   export STEYG_CODE_API_KEY="<API key STEYG Code của bạn>"
   ```
   ```powershell
   # Windows PowerShell: lưu cho tài khoản người dùng, mở terminal mới sau khi chạy
   setx STEYG_CODE_API_KEY "<API key STEYG Code của bạn>"
   ```
3. Lấy model id: `./scripts/list-models.sh` (macOS, Linux) hoặc `./scripts/list-models.ps1` (Windows).
4. Mở thư mục của công cụ bạn dùng và làm theo README trong đó.

## Theo công cụ

| Công cụ | Thư mục | Hướng dẫn chi tiết |
| --- | --- | --- |
| Claude Code | [`claude-code/`](claude-code/) | [Claude Code dùng API key](https://steyg.one/resources/claude-code-api-key-anthropic-base-url?utm_source=github&utm_medium=repo&utm_campaign=seo-1025) |
| Codex CLI | [`codex/`](codex/) | [Codex CLI với API key riêng](https://steyg.one/resources/codex-cli-api-key-config-toml?utm_source=github&utm_medium=repo&utm_campaign=seo-1025) |
| OpenCode | [`opencode/`](opencode/) | [OpenCode dùng API key](https://steyg.one/resources/opencode-api-key-cau-hinh-provider?utm_source=github&utm_medium=repo&utm_campaign=seo-1025) |
| OpenClaw (kèm Zalo) | [`openclaw/`](openclaw/) | [OpenClaw dùng API key](https://steyg.one/resources/openclaw-api-key-cau-hinh-provider?utm_source=github&utm_medium=repo&utm_campaign=seo-1025) |
| Cursor, Cline, Kilo Code | [`cursor-cline/`](cursor-cline/) | [Cursor, Cline dùng API key riêng](https://steyg.one/resources/cau-hinh-cursor-cline-claude-code-voi-steyg-code?utm_source=github&utm_medium=repo&utm_campaign=seo-1025) |
| Continue | [`continue/`](continue/) | [Cursor, Cline dùng API key riêng](https://steyg.one/resources/cau-hinh-cursor-cline-claude-code-voi-steyg-code?utm_source=github&utm_medium=repo&utm_campaign=seo-1025) |
| OpenAI SDK, curl | [`sdk/`](sdk/) | [OpenAI SDK đổi base URL](https://steyg.one/resources/openai-sdk-base-url-python-typescript?utm_source=github&utm_medium=repo&utm_campaign=seo-1025) |

Đọc thêm: [tiết kiệm token khi dùng Claude Code và Codex](https://steyg.one/resources/tiet-kiem-token-claude-code-codex?utm_source=github&utm_medium=repo&utm_campaign=seo-1025), [1 triệu token là bao nhiêu chữ tiếng Việt](https://steyg.one/resources/cach-tinh-chi-phi-token-ai-coding?utm_source=github&utm_medium=repo&utm_campaign=seo-1025), [lỗi Claude Code thường gặp](https://steyg.one/resources/loi-claude-code-thuong-gap-va-cach-sua?utm_source=github&utm_medium=repo&utm_campaign=seo-1025).

## Bảo mật

- Không commit API key. `.gitignore` của repo đã chặn `.env`; trong dự án của bạn, đừng đặt key vào file cấu hình nằm trong thư mục dự án (ví dụ `.claude/settings.json` của dự án).
- Mỗi công cụ một key riêng để usage tách bạch và thu hồi được riêng.
- Nghi lộ key thì thu hồi ngay trong dashboard rồi tạo key mới.

## Góp ý

Mẫu nào sai so với bản mới của công cụ, mở issue kèm phiên bản công cụ và thông báo lỗi (che key). Cập nhật lần cuối: 25/10/2026.

## Giấy phép

[MIT](LICENSE).
