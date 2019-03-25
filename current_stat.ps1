ram (
    [string]$tagname)

Connect-VIServer -Server vcenter.rhipe.com -User "administrator@vsphere.local" -Password "X?5?LDv+"
$result_2 =  Get-VM -tag $tagname
Write-Output $result_2
