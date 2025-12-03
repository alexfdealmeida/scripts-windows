Write-Host "Limitando utilizacao do processador em 30%..."`r`n
Set-MpPreference -ScanAvgCPULoadFactor 30

Read-Host "Pressione qualquer tecla para finalizar..."