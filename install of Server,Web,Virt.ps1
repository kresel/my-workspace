import-module RemoteDesktop
$compname = $env:COMPUTERNAME.ToString()
$username = $env:USERNAME.ToString()

#this is a test line
#Write-Output $compname
#Write-Output $username
$systemname = $username +"." + $compname + ".com"
New-SessionDeployment -ConnectionBroker $systemname -WebAccessServer -RD $systemname -SessionHost $systemname
#then there is some validation and deployment 