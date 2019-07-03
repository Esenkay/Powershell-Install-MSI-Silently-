

Invoke-WebRequest -Uri https://download.visualstudio.microsoft.com/download/pr/65aecaf4-6011-4882-831d-c9b90cd5033c/55c3561e8ee2629a5298a0ac828fdf0a/dotnet-runtime-2.2.4-win-x64.exe  -OutFile $env:temp\dotnet-runtime-2.2.4-win-x64.exe ; Start-Process -FilePath "$env:temp\dotnet-runtime-2.2.4-win-x64.exe" -ArgumentList "  /quiet" -Wait

