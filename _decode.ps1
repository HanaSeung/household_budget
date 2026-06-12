$ErrorActionPreference = 'Stop'
$dir = 'D:\MyApp\household_budget'
$b64 = Get-Content (Join-Path $dir '_tmp.b64') -Raw
$bytes = [Convert]::FromBase64String($b64.Trim())
[IO.File]::WriteAllBytes((Join-Path $dir 'household_budget.html'), $bytes)
$fi = Get-Item (Join-Path $dir 'household_budget.html')
Write-Output ('SIZE=' + $fi.Length)
Remove-Item (Join-Path $dir '_tmp.b64')
Write-Output 'DONE'
