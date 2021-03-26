﻿cls
## ------------------------------------------
##
##Script: MigrationToTeamsDNSCheck
##Version: V1.3
##Author: Tiago Roxo
##Description: Powershell Script used to query all Skype for Business hardcoded DNS's to all your Domains part of the tenant, help you detect your current configuration, and help you migrate the tenant Coexistance mode to TeamsOnly.
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