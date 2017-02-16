Import-Module RemoteDesktop
$myFQDN=(Get-WmiObject win32_computersystem).DNSHostName+"."+(Get-WmiObject win32_computersystem).Domain 
Write-Host $myFQDN
#while this one has to be ran on the machien that it is being installed on 
Add-RDServer -Server $myFQDN -Role RDS-GATEWAY -GatewayExternalFqdn $myFQDN