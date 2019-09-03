$username = "efccef82-085a-4f64-97eb-f56ecc3dbfaf"
$password = ConvertTo-SecureString "H*iv@*_dkqRruSQqrjFs6biDE40vrFX8" -AsPlainText -Force
$psCred = New-Object System.Management.Automation.PSCredential -ArgumentList ($username, $password)
$credentials = Get-Credential -Credential $psCred
Connect-AzAccount -ServicePrincipal -Credential $credentials -Tenant "7be3de76-16d0-4d38-b670-d8fc9b7d9c5d"


Write-Host "LoggedIn" -ForegroundColor "Green"

Select-AzSubscription -SubscriptionId "df9e6b0f-de5d-4271-97ac-646e12fc41b1"
$name = "psfromadotestingjaj"
New-AzKeyVault -Location eastus  -ResourceGroupName "AutomationTestingRsgEastUs" -Name $name