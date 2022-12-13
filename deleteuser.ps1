# Get the SID of the user whose profile you want to remove
$userSid = (Get-WmiObject Win32_UserAccount -Filter "Name='<username>'").SID

# Remove the user profile from the local computer
Remove-Item -Path "C:\Users\<username>" -Recurse

# Remove the user's registry SID
Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList\$userSid" -Recurse
