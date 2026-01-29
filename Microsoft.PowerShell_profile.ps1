$shimPath = "$HOME\AppData\Local\mise\shims"
$paths = $env:Path -split ';' | Where-Object { $_ -ne $shimPath }
# $paths = $env:Path -split ';' | Where-Object { $_ -notlike "*\shims" }
$env:Path = "$shimPath;" + ($paths -join ';')
mise activate pwsh | Out-String | Invoke-Expression
mise activate pwsh --shims | Out-String | Invoke-Expression
