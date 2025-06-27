# shows port information for ports with actively listening services

Get-NetTCPConnection | Where-Object {$_.State -eq "Listen"}

