Import-Module ActiveDirectory
write-host "`n"
Write-Host "Whatif parameter will be ran to check AD status of the hosts." -NoNewLine
write-host "`n"
pause
Get-Content -Path delete.txt | Remove-ADComputer -WhatIf
write-host "`n"
Write-Host "Are you sure you want to delete the above from AD?" -NoNewLine
write-host "`n"
pause
Get-Content -Path delete.txt | Remove-ADComputer
write-host "`n"
Write-Host "Hosts in delete.txt have been removed from AD." -NoNewLine
write-host "`n"
pause