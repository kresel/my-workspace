#this part has to be ran off of the machine that it is going to be installing it too 
Import-Module RemoteDesktop
$theFQDN = "KK_testbox.fishbowl.com"
$theCollectionName = "Dubuque Coffee"
#Creates the RDS system with connection broker, Web access server, and the session host
New-SessionDeployment -ConnectionBroker $theFQDN -WebAccessServer $theFQDN -SessionHost $theFQDN 

#The code creates and names the collection and gives it a discription However it does not give exact users right to the collection it is open to all the users 
New-RDSessionCollection -CollectionName $theCollectionName -SessionHost $theFQDN -CollectionDescription "Customers collection of programs" -ConnectionBroker $theFQDN

# This code right here is to add porgram to the collection HOWEVER I dont know were the atom program is on the collections secsion 
#New-RDRemoteApp -Alias Wordpad - Wordpad -FilePath  "C:\Users\Administrator\AppData\Local\atom\app-1.14.3\atom.exe"-ShowInWebAccess 1 -CollectionName $theCollectionName -ConnectionBroker $theFQDN