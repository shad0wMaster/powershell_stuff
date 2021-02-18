#Written by Andy 'shad0wMast3r' Kukuc
#Simple script unlocks your hard drive

<#So in here we are taking user input and going to save and then convert it into an int#>
$colon=":" #This will add on the colon to the drive letter since its windows and it will bitch
$number_input=Read-Host 'Please enter number of drives that will be unlocked.'`n <#This prints the message#>
$convert_to_int=[int]$number_input #convert the string to an Integer
$counter=0;
$drive_array=@()
while($counter -lt $convert_to_int){
    $drive_letter=Read-Host 'Please enter letters of the drives to be unlocked.'`n

    write-host 'Print out the length of the array'
    $drive_array+=$drive_letter.ToUpper()+$colon
    $drive_array.length
    $counter+=1;
}
write-host 'Out of while loop and prints out values inside the array'
write-host $drive_array[0..$convert_to_int]

<#
$drive1=ConvertTo-SecureString "Input the password in here" -AsPlainText -Force
$drive2=ConvertTo-SecureString "Input the password in here" -AsPlainText -Force
$drive3=ConvertTo-SecureString "Input the password in here" -AsPlainText -Force

$drive_array=@("D:","E:","H:") #set it to the drive letter of the encrypted drive
$password_array=@($drive1,$drive2,$drive3)

Unlock-Bitlocker -MountPoint $drive_array[0..$convert_to_int] #-Password $password_array[0]
Unlock-Bitlocker -MountPoint $drive_array[1] -Password $password_array[1]
Unlock-Bitlocker -MountPoint $drive_array[2] -Password $password_array[2]
#>