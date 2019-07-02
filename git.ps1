

Invoke-WebRequest -Uri https://github.com/git-for-windows/git/releases/download/v2.22.0.windows.1/Git-2.22.0-64-bit.exe  -OutFile $env:temp\Git-2.22.0-64-bit.exe ; Start-Process -FilePath "$env:temp\Git-2.22.0-64-bit.exe" -ArgumentList " /SP- /VERYSILENT /SUPPRESSMSGBOXES /FORCECLOSEAPPLICATIONS" -Wait

