import-module RemoteDesktop
$compname = $env:COMPUTERNAME 
#this is a test lien 
#Write-Output $compname
New-session Deployment -ConnectionBroker "this will be named later" -WebAccessServer RD- "Name later" -SessionHost "Name later"
#then there is some validation and deployment 
