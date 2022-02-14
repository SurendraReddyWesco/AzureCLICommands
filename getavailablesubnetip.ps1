# Set the Subscriptio id
Set-AzContext -SubscriptionId "WESCO Production"

# Name - Named of the Vnet
# Resource Group Name
$nic = Get-AzureRmVirtualNetwork -Name "vnet-prod-shared-01" -ResourceGroupName "rg-prod-network"
$nic.AddressSpace.AddressPrefixes
$subnets = $nic.Subnets
#$subnets
foreach( $subnet in $subnets)
{
  #$subnet.Name
  #$subnet.IpConfigurations.Count
  #$subnet.AddressPrefix
  $splitAddress = $subnet.AddressPrefix.Split("/")
  $output = [math]::Pow(2, (32 - $splitAddress[1])) - 5 - $subnet.IpConfigurations.Count
  #$output
  $subnet.Name, $output | Format-Table -AutoSize
}
