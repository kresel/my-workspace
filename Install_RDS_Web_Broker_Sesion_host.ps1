#this part has to be ran off of the machine that it is going to be installing it too 
Import-Module RemoteDesktop
New-SessionDeployment -ConnectionBroker KK_testBox.fishbowl.com -WebAccessServer KK_testBox.fishbowl.com -SessionHost KK_testBox.fishbowl.com 