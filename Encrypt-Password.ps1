$key = 0..255 | Get-Random -Count 32 | %{[byte]$_} | Out-File -FilePath $PSScriptRoot\key.txt
Write-Host "Please enter the password to be encrypted:"
$Secure = Read-Host -AsSecureString
$Encrypted = ConvertFrom-SecureString -SecureString $Secure -Key $key
$Encrypted | Set-Content $PSScriptRoot\Encrypted.txt

