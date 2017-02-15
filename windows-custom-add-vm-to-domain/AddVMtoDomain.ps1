Param(
  $Domain,
  $UserName,
  $Password
)

$User = "$Domain\$UserName"
$PWord = ConvertTo-SecureString -String $Password -AsPlainText -Force
$Credential = New-Object -TypeName "System.Management.Automation.PSCredential" -ArgumentList $User, $PWord
Add-Computer -ComputerName $env:COMPUTERNAME -DomainName $Domain -Credential $Credential -restart -Force