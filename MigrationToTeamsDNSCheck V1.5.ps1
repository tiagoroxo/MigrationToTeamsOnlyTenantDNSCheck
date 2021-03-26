﻿cls
## ------------------------------------------
##
##Script: MigrationToTeamsDNSCheck
##Version: V1.5
##Author: Tiago Roxo
##Description: Powershell Script used to query Skype for Business hardcoded DNS's to all your Domains part of the tenant, help you detect your current configuration, and help you migrate the tenant Coexistance mode to TeamsOnly.
## 
## ------------------------------------------

try{
	$hello = Get-AzureADTenantDetail
    cls
	
}catch{
    Connect-AzureAD
    Read-Host -Prompt "Press enter to Start"
}
cls
#Get the List of Domains from O365 Tenant
##DEBUG
####################################
$domains = @(
           [pscustomobject]@{Name='lemonslice.co'}
           [pscustomobject]@{Name='dawhitne.net'}
           [pscustomobject]@{Name='dawhitne2.onmicrosoft.com'}
           [pscustomobject]@{Name='dawhitne2.com'}
           [pscustomobject]@{Name='child.dawhitne2.net'}
           [pscustomobject]@{Name='bertelsmann.de'}
           [pscustomobject]@{Name='surfacewilmar.co.zw'}

)
###################################
