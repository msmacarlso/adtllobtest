Param(
  $Accounts
)

$accountsArray = $Accounts.Split(",")
			
foreach ($account in $accountsArray)
{
	$domainName = $account.Split('\')[0]
	$domainUser = $account.Split('\')[1]
	$computerName = $env:computername
    
    Write-Output "Adding user account, '$domainUser' in domain, '$domainName' to local admin group on computer, '$computerName'"
	#([ADSI]'WinNT://$computerName/Administrators,group').Add('WinNT://$domainName/$domainUser,user')
    net localgroup administrators /add $account
}