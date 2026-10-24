// npm install openai
// Dùng: STEYG_CODE_API_KEY=... npx tsx sdk/typescript/chat.ts MODEL_ID
import OpenAI from "openai";

const client = new OpenAI({
  baseURL: "https://steyg.one/api/v1",
  apiKey: process.env.STEYG_CODE_API_KEY,
});

const response = await client.chat.completions.create({
  model: process.argv[2] ?? "MODEL_ID",
  max_tokens: 256,
  messages: [{ role: "user", content: "Viết hàm TypeScript đảo ngược một chuỗi" }],
});
console.log(response.choices[0]?.message?.content);
