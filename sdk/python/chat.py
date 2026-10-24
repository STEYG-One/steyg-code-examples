# pip install openai
# Dùng: STEYG_CODE_API_KEY=... python sdk/python/chat.py MODEL_ID
import os
import sys

from openai import OpenAI

client = OpenAI(
    base_url="https://steyg.one/api/v1",
    api_key=os.environ["STEYG_CODE_API_KEY"],
)

response = client.chat.completions.create(
    model=sys.argv[1] if len(sys.argv) > 1 else "MODEL_ID",
    max_tokens=256,
    messages=[{"role": "user", "content": "Viết hàm Python đảo ngược một chuỗi"}],
)
print(response.choices[0].message.content)
