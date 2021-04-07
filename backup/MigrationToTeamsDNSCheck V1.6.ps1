﻿cls
## ------------------------------------------
##
##Script: MigrationToTeamsDNSCheck
##Version: V1.6
##Author: Tiago Roxo
##Description: Powershell Script used to query Skype for Business hardcoded DNS's to all your Domains part of the tenant, help you detect your current configuration, and help you migrate the tenant Coexistance mode to TeamsOnly.
##
##Warning: Make sure you have the latest "MicrosoftTeams" module version installed - "Update-Module MicrosoftTeams".
##
## ------------------------------------------

#Variables
##############################################################################################

##Function: Connection to Microsoft Teams
try{

Import-Module MicrosoftTeams
Connect-MicrosoftTeams
Read-Host -Prompt "Press enter to Start"
cls


#Function: Get the List of SIP Domains Enabled/Disabled