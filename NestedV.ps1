Set-VMProcessor -VMName Client1  -ExposeVirtualizationExtensions $true

Get-VMNetworkAdapter -VMName Client1 | Set-VMNetworkAdapter -MacAddressSpoofing On