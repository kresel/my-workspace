#this is the option that will be used if i cant find a way around the depricated Servermanagercmd
#still needs to be tested
#add to the tado list
=begin

resource_name :RDS_Install
default_action :Install_RDS
ps_64 = 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe'

powershell_script 'Install_RDS' do
code %Q{
Import-Module Servermanager
Add-WindowsFeature RDS-RD-Server
}.strip
not_if%Q{
  #{ps_64} "Import-Module Servermanager; $check = get-windowsfeature -name RDS-RD-Server; if ($check.installed -ne 'True'){ exit 1 }"
}.strip
=end
