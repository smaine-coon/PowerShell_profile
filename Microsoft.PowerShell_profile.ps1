$env:Path = ($env:Path -split ';' | Where-Object { $_ -ne "$HOME\AppData\Local\mise\shims" }) -join ';'
$env:Path = "$HOME\AppData\Local\mise\shims;$env:Path"
mise activate pwsh | Out-String | Invoke-Expression
mise activate pwsh --shims | Out-String | Invoke-Expression
