<#Written by Andy 'shad0wMast3r' Kukuc#>
<#Simple script unlocks your hard drive#>

<#So in here we are taking user input and going to save and then convert it into an int#>

<#This will add on the colon to the drive letter since its windows and it will bitch#>
$colon=":" 

 <#This prints the message and reads the input#>
$number_input=Read-Host 'Please enter number of drives that will be unlocked.'`n

<#convert the string to an Integer#>
$convert_to_int=[int]$number_input 

<#Initiate a Counter Variable for While Loooooopppppp#>
$counter=0; 

<#start an array fuck face#>
$drive_array=@() 

<#Damn while loops for arrays are simple#>
while($counter -lt $convert_to_int){ 
     <#Reads the drive letter and saves them to an array#>
    $drive_letter=Read-Host 'Please enter letters of the drives to be unlocked.'`n

    <#Adding the drive letters to an array.#>
    $drive_array+=$drive_letter.ToUpper()+$colon
    
    <#Start coutner lol#>
    $counter+=1;

    <#Debugging life
    $drive_array.length debugging bullshit like always
    write-host 'Print out the length of the array'#>
}

<#Debugging life
write-host 'Out of while loop and prints out values inside the array'
write-host $drive_array[0..$convert_to_int]

<# THIS IS OLD CODE THAT WILL BE REMOVED JUST NEED TO FIGURE OUT THE SYNTAX BUT IT SHOULDNT BE THAT HARD
$drive1=ConvertTo-SecureString "Input the password in here" -AsPlainText -Force
$drive2=ConvertTo-SecureString "Input the password in here" -AsPlainText -Force
$drive3=ConvertTo-SecureString "Input the password in here" -AsPlainText -Force

$drive_array=@("D:","E:","H:") #set it to the drive letter of the encrypted drive
$password_array=@($drive1,$drive2,$drive3)

Unlock-Bitlocker -MountPoint $drive_array[0..$convert_to_int] #-Password $password_array[0]
Unlock-Bitlocker -MountPoint $drive_array[1] -Password $password_array[1]
Unlock-Bitlocker -MountPoint $drive_array[2] -Password $password_array[2]
#>