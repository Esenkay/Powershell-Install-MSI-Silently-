# Powershell-Install-MSI-Silently-
This is a simple Powershell script that can be used to install a windows .MSI file(Software) without going through selecting and pressing keys. It downloads from a remote server and install. In our case, we are going to use 7-zip archive extractor.

Bellow is a breakdown of each line of code in the PowerShell script



```$uri = "http://www.7-zip.org/a/7z1701-x64.msi" ```

The URL to download te .msi file (In our case (7-zip archve extractor)).



```$out = "c:\Users\Public\Libraries\7z1701-x64.msi" ``` 

Location where the file will be saved (This can be changed to temporary.



```Invoke-webrequest -uri $uri  -OutFile $out | ``` 

parse data returned from web request and execute the following line.



```msiexec /i "c:\Users\Public\Libraries\7z1701-x64.msi" /qn /norestart ```

Install the downloaded file without prompting the user to take any given action.
