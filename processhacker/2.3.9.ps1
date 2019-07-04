
Invoke-WebRequest -Uri https://github.com/processhacker2/processhacker2/releases/download/v2.39/processhacker-2.39-setup.exe  -OutFile $env:temp\processhacker-2.39-setup.exe ; Start-Process -FilePath "$env:temp\processhacker-2.39-setup.exe" -ArgumentList " /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- " -Wait

