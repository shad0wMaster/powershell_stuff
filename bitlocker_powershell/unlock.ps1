#Written by Andy 'shad0wMast3r' Kukuc
#Simple script unlocks your hard drive

$drive1=ConvertTo-SecureString "Input the password in here" -AsPlainText -Force
$drive2=ConvertTo-SecureString "Input the password in here" -AsPlainText -Force
$drive3=ConvertTo-SecureString "Input the password in here" -AsPlainText -Force

$drive_array=@("D:","E:","H:") #set it to the drive letter of the encrypted drive
$password_array=@($drive1,$drive2,$drive3)

Unlock-Bitlocker -MountPoint $drive_array[0] -Password $password_array[0]
Unlock-Bitlocker -MountPoint $drive_array[1] -Password $password_array[1]
Unlock-Bitlocker -MountPoint $drive_array[2] -Password $password_array[2]