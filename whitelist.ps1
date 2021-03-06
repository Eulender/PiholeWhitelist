
<# 	Update Whitelists from Github
	Powershell Script
	Install/Update with wget -N https://raw.githubusercontent.com/Eulender/PiholeWhitelist/master/whitelist.ps1
	
	Update with cron
	wget https://raw.githubusercontent.com/Eulender/PiholeWhitelist/master/whitelist.ps1 -O /path/to/file
#>

$source = 'https://raw.githubusercontent.com/Eulender/PiholeWhitelist/master/whitelist.txt'
$destination = 'whitelist.txt'
Invoke-WebRequest -Headers @{"Cache-Control"="no-cache"} -Uri $source -OutFile $destination

Import-Csv whitelist.txt -delimiter ";" |`
    ForEach-Object {
        $Domain = $_.Domain 
		if($_.Wild -eq "Y"){
			pihole --white-wild $Domain
		}else{
			pihole -w $Domain
		}

    }
remove-item whitelist.txt

