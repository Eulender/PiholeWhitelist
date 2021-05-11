# PiholeWhitelist

## Install Powershell
[Link Microsoft](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-linux?view=powershell-7.1)

## Autostart

### Cron
#### Update Whitelists in Pihole   
*/30 * * * * sudo pwsh /home/administrator/whitelist.ps1
#### Update Script 
wget https://raw.githubusercontent.com/Eulender/PiholeWhitelist/master/whitelist.ps1 -O /path/to/file


