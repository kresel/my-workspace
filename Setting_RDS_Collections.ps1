Import-Module RemoteDesktop
$theFQDN = "KK_testbox.fishbowl.com"
$theCollectionName = "Dubuque Coffee"
New-RDRemoteApp -Alias Atom -DisplayName Atom -FilePath  "C:\Users\Administrator\AppData\Local\atom\app-1.14.3\atom.exe"-ShowInWebAccess 1 -CollectionName $theCollectionName -ConnectionBroker $theFQDN