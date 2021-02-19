<#Written by Andy 'shad0wMast3r' Kukuc#>
<#Simple script unlocks your hard drive#>

Clear-Host
<#So in here we are taking user input and going to save and then convert it into an int#>

<#This will add on the colon to the drive letter since its windows and it will bitch#>
$colon=":" 

 <#This prints the message and reads the input#>
$number_input=Read-Host 'Please enter number of drives that will be unlocked'

<#convert the string to an Integer#>
$convert_to_int=[int]$number_input-1 

<#Initiate a Counter Variable for While Loooooopppppp#>
$counter=0; 

<#start an array fuck face#>
$drive_array=@() 
$password_array=@()

<#Damn while loops for arrays are simple#>
while($counter -lt $convert_to_int){ 
     <#Reads the drive letter and saves them to an array#>
    $drive_letter=Read-Host 'Please enter letter of the drives to be unlocked'
    $capitalize_drive_letter=$drive_letter.ToUpper(); <#Yes it worked#>
    <#Adding the drive letters to an array.#>
    $drive_array+=$drive_letter.ToUpper()+$colon
    
    <#Take Users Password and pass it along#>
    $password_input=Read-Host "Enter the password for Drive Letter: $capitalize_drive_letter" -AsSecureString
    $password_array+=$password_input
      
    <#Start coutner lol#>
    $counter+=1;
}
    
#for some odd reason when passing in the array variable and starting a count the $convert_to_int does not save will fix later
# Unlock-Bitlocker -MountPoint $drive_array[0..$convert_to_int] -Password $password_array[0..$convert_to_int]

#This works because only 1 drive is specified at array index 0. The drive array works but the password one bitches
Unlock-Bitlocker -MountPoint $drive_array[0..$convert_to_int] -Password $password_array[0] 

<#
    Debugging life
    $drive_array.length debugging bullshit like always
    write-host 'Print out the length of the array'
    #>
 