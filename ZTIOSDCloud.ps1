Write-Host  -ForegroundColor Cyan "Starting OSDCloud Deployment ..."
Write-Host  -ForegroundColor Cyan "Fasten your seatbelts!"
Start-Sleep -Seconds 5

#Change Display Resolution for Virtual Machine
if ((Get-MyComputerModel) -match 'Virtual') {
    Write-Host  -ForegroundColor Cyan "Setting Display Resolution to 1920x"
    Set-DisRes 1920
}

#Install-Script -Name Get-WindowsAutoPilotInfo -Force
# Export to E:\OSDCloud\


#Make sure I have the latest OSD Content
#Write-Host  -ForegroundColor Cyan "Updating OSD PowerShell Module"
#Install-Module OSD -Force

#Write-Host  -ForegroundColor Cyan "Importing OSD PowerShell Module"
#Import-Module OSD -Force

#TODO: Spend the time to write a function to do this and put it here
#Write-Host  -ForegroundColor Cyan "Ejecting ISO"
#Write-Warning "That didn't work because I haven't coded it yet!"
#Start-Sleep -Seconds 5

#Start OSDCloud ZTI the RIGHT way
Write-Host  -ForegroundColor Cyan "Start Windows 10 21H1 installation"
Start-OSDCloud -OSLanguage nl-nl -OSBuild 21H1 -OSEdition Enterprise

#Anything I want  can go right here and I can change it at any time since it is in the Cloud!!!!!
#Write-Host  -ForegroundColor Cyan "Starting OSDCloud PostAction ..."
#Write-Warning "I'm not sure of what to put here yet"

#Restart from WinPE
Write-Host  -ForegroundColor Cyan "Restarting in 20 seconds!"
Start-Sleep -Seconds 20
wpeutil reboot
