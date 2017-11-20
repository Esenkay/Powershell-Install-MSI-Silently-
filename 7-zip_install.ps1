$uri = "http://www.7-zip.org/a/7z1701-x64.msi"
$out = "c:\Users\Public\Libraries\7z1701-x64.msi"
Invoke-webrequest -uri $uri  -OutFile $out |
msiexec /i "c:\Users\Public\Libraries\7z1701-x64.msi" /qn /norestart
