





$nmapUrl = "https://nmap.org/dist/nmap-7.70-setup.exe"; Invoke-WebRequest -Uri $nmapUrl -OutFile $env:temp\nmap-7.70-setup.exe ; Start-Process -FilePath "$env:temp\nmap-7.70-setup.exe" -ArgumentList " /S" -Wait




