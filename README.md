# Powershell_Password_Encryption
simple password encryption to be utilized in powershell scripts

How to Use:

1. Run above
2. Will prompt for password to encrypt
3. output two files:  key.txt and Encrypted.txt in the same directory as the script


Utilizing In Code:

In the script where you want to use the encrypted password, you can do the following:

$key = get-content $PSScriptRoot\key.txt or $key = (<contents seperated by commas>) 

$pwd = Get-Content $PSScriptRoot\Encrypted.txt  
$EncryptedPassword = ConvertTo-SecureString $pwd -AsPlainText -Force
$securePassword = ConvertFrom-SecureString $EncryptedPassword -Key $key

$credential = New-Object System.Management.Automation.PSCredential ("domain\username", $securePassword)
Where ever the pasword is needed, use $secure in it's place

--------------------- EXAMPLE ---------------------


$key= (223,
91,
89,
67,
21,
202,
250,
88,
45)

$pwd = Get-Content $PSScriptRoot\Encrypted.txt  
$securePassword = ConvertFrom-SecureString $EncryptedPassword -Key $key
$securePassword = ConvertTo-SecureString $securePassword -AsPlainText -Force

$credential = New-Object System.Management.Automation.PSCredential ("domain\username", $securePassword)
