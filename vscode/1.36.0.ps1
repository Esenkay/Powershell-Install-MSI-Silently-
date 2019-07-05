

# http://www.jrsoftware.org/ishelp/index.php?topic=setupcmdline
# https://code.visualstudio.com/docs/setup/windows#_what-commandline-arguments-are-supported-by-the-windows-setup
Invoke-WebRequest -Uri https://az764295.vo.msecnd.net/stable/0f3794b38477eea13fb47fbe15a42798e6129338/VSCodeSetup-x64-1.36.0.exe  -OutFile $env:temp\VSCodeSetup-x64-1.36.0.exe ; Start-Process -FilePath "$env:temp\VSCodeSetup-x64-1.36.0.exe" -ArgumentList "  /VERYSILENT /SP- /mergetasks=!runcode " -Wait