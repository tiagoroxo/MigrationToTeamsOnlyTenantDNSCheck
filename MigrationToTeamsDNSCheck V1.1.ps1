﻿cls
## ------------------------------------------
##
##Script: MigrationToTeamsDNSCheck
##Version: V1.1
##Author: Tiago Roxo
##Description: Powershell Script used to query all Skype for Business hardcoded DNS's to help you migrate the tenant to TeamsOnly Mode
##DNS Queries:
## Lyncdiscover
## SIP
## _sip._tls.
## _sipfederationtls._tcp
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
$domains = Get-AzureADDomain