Import-Module RemoteDesktop
#while this one has to be ran on the machien that it is being installed on 
Add-RDServer -Server "KK_testBox.fishbowl.com" -Role RDS-GATEWAY -GatewayExternalFqdn "KK_testBox.fishbowl.com"