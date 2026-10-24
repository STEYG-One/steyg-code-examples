# In ra model id đang bán, mỗi dòng một id. Cần biến STEYG_CODE_API_KEY.
if (-not $env:STEYG_CODE_API_KEY) { throw "Chưa đặt biến STEYG_CODE_API_KEY" }
$response = Invoke-RestMethod -Uri "https://steyg.one/api/v1/models" -Headers @{ Authorization = "Bearer $env:STEYG_CODE_API_KEY" }
$response.data | ForEach-Object { $_.id }
