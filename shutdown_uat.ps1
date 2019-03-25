param (
    [string]$tagname)

Connect-VIServer -Server vcenter.rhipe.com -User "administrator@vsphere.local" -Password "X?5?LDv+"

Write-Output $tagname
$result = Get-VM -tag $tagname | shutdown-vmguest -confirm:$false
Write-Output $result
Start-Sleep -s 30
$result_2 =  Get-VM -tag $tagname
Write-Output $result_2
