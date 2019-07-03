# Powershell-Install-Silent
Powershell script that can be used to install a Windows MSI or installation EXE without going through downloading and selecting and pressing keys. Script downloads from a remote server and installs.

Run `powershell` as Administrator and paste to install `7zip`:
```
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/dzmitry-lahoda/powershell-install-silent/master/7zip/19.00.ps1'))
```



Check out each folder for available application and versions.

# Guidelines
- For Windows 10 from 2018+ or Windows Server 2018+
- One liners or easily copied into powershell console, no need to download-import modules.
- Store download in `$env:TEMP`
- Named same as [Chocolatey](https://github.com/chocolatey) packages. Unfortunately `Chocolatey` is not [open source](https://github.com/chocolatey/shimgen). Discussion about open source was totally deleted by owner of `Chocolatey`. Without `shimgen` and given limitation of PATH on Windows - there is no good possibility to have package manager.

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

# Extensions

## Customer robust storage with check sums

Given gateway IPFS running locally or gateway provided as parameters, download to and from IPFS. So that it can be shared and reused. And be available even if original source is not accessible.

## 32 bit

Detect that we are 32 bit and download that version.


## Install failure

Could do logging into `$env:TEMP` for each install and check installed files.

## Parameters

Could option for parameters into function, so without violation one liners. Could do configuration per subset of users, not in main file.


## Wrappers

APPX, MSIX and Windows Capabilities are already easy to install via PowerShell. So still can provide these wrapped here for unified look and feel. And these do work from PowerShell, but fail from `pwsh` (Powershell core), so may try to wrap into something working from `pwsh`.

# List application and version

Access git and list folders with version. Automate list generation on each push.