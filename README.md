# Powershell_Password_Encryption
simple password encryption to be utilized in powershell scripts

How to Use:

1. Run above
2. Will prompt for password to encrypt
3. output two files:  key.txt and Encrypted.txt in the same directory as the script


Utilizing In Code:

In the script where you want to use the encrypted password, you can do the following:

$key = get-content $PSScriptRoot\key.txt
or
$key = <Contents of key.txt>

$Secure = Get-Content $PSScriptRoot\Encrypted.txt | ConvertTo-SecureString -Key $key
or
$Secure  = <Contents of Encrypted.txt> | ConvertTo-SecureString -Key $key

Where ever the pasword is needed, use $secure in it's place

