function Test-Port

{$computer=Read-Host "Computername | Ziel-IP-Adresse?"

$port=Read-Host "Portnummer? mehrere Ports durch Komma trennen"

$port.split(',') | Foreach-Object -Process {If (($a=Test-NetConnection $computer -Port $_ -WarningAction SilentlyContinue).tcpTestSucceeded -eq $true) {Write-Host $a.Computername $a.RemotePort -ForegroundColor Green -Separator " jupp; "} else {Write-Host $a.Computername $a.RemotePort -Separator " nix; " -ForegroundColor Red}}

}
