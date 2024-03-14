#Get Event log
get-eventlog -LogName system -Newest 3

#List IP Address for remote computer
Enter-PSSession LON-SVR1 | ipconfig

Enable-PSRemoting -Force 
Get-CimInstance -ComputerName LON-CL1,LON-SVR1,LON-DC1 -ClassName Win32_NetworkAdapterConfiguration -Filter "IPEnabled = 'True'" | Select-Object ipaddress,PSComputerName

#Create new OU
New-ADOrganizationalUnit -Name 'Demo Users' -Path "DC=Adatum,DC=com"

#Change wallpaper picture
Install-Script -Name Set-LockScreen
Set-LockScreen -BackgroundSource "E:\Desktop\ASPdotNET_logo.jpg" 