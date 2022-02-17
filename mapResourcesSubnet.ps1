# Set the Subscription id
Set-AzContext -SubscriptionId "WESCO Production"

<# 
--------------------------------------
Provide the VnetName and ResourceGroupName
Eg:- rg-PROD-t2tmigration-vnet
Name - Named of the Vnet
Resource Group Name
--------------------------------------
#>
# Run the Powershell Function
$Subnets = (Get-AzureRmVirtualNetwork -name 'vnet-prod-shared-01' -ResourceGroupName 'rg-prod-network').SubnetsText
$Subnets = $Subnets | ConvertFrom-Json

# Loop through the subnets and fetch the details
Write-Host "ResourceGroupName, DeviceName"
foreach ($subnet in $subnets) {	
        if ($subnet.IpConfigurations -ne $null) {
            foreach ($ipconfig in $subnet.IpConfigurations) {
                $RG = $ipconfig.Id.Split("/")[4]
                $NIC = $ipconfig.Id.Split("/")[8]
		$IP = (Get-AzureRmNetworkInterface -Name $NIC -ResourceGroupName $RG).IpConfigurations.PrivateIpAddress
		Write-Host $RG ','  $NIC ',' $IP
            }
        }
}
