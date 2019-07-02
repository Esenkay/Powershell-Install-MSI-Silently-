# Powershell-Install-Silent
This is a simple Powershell script that can be used to install a windows .MSI file(Software) or EXE without going through selecting and pressing keys. It downloads from a remote server and install. In our case, we are going to use 7-zip archive extractor.

Bellow is a breakdown of each line of code in the PowerShell script


```$uri = "http://www.7-zip.org/a/7z1701-x64.msi" ```

The URL to download te .msi file (In our case (7-zip archve extractor)).



```$out = "c:\Users\Public\Libraries\7z1701-x64.msi" ``` 

Location where the file will be saved (This can be changed to temporary.



```Invoke-webrequest -uri $uri  -OutFile $out | ``` 

parse data returned from web request and execute the following line.



```msiexec /i "c:\Users\Public\Libraries\7z1701-x64.msi" /qn /norestart ```

Install the downloaded file without prompting the user to take any given action.


# Guidelines
- For Windows 10 from 2018+ or Windows Server 2018+
- One liners or easily copied into powershell console, no need to download-import modules
- Store downloaded in TEMP
- Named same as chocolatey packages

# See also

https://github.com/Limech/git-powershell-silent-install

# Issues

## Via SSH on Remote

```
# no progress bar
$ProgressPreference = 'SilentlyContinue'
```

## HTTPS protocol
```
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
```

## Rights

Run as Admin and allow `Set-ExecutionPolicy Unrestricted`