<#
Simple Powershell Script ASking User For Input and Killing Processes
by shad0wmast3r ("Andy Kukuc") 
ALSO WRITTEN IN VIM BASH FOR WINDOWS ALL GLORY TO VIM
#>
Set-PSReadlineOption -HistorySaveStyle SaveNothing
cls
start 'C:\Windows\System32\notepad.exe'
function run_asshole{
  #start 'C:\Windows\System32\notepad.exe'
  $counter =0
while($true){
  Write-Host 'Simple Powershell script to kill proccsess.'
  Write-Host 'By: shad0wmast3r (Andy Kukuc).'`n -ForegroundColor Cyan -BackgroundColor Black
  $user_specific_process=Read-Host 'Please enter the process name you wish to kill.'`n
  $added_wildcard=$user_specific_process+"*"
  #Write-Host 'Printing Users Input And Adding A Wildcard'$added_wildcard'.' -ForegroundColor Cyan`n
  #Start-Sleep 3
  if((Get-Process -name $added_wildcard -ErrorAction SilentlyContinue) -eq $null){
    Write-Host 'Invalid Input'$added_wildcard'.'`n -ForegroundColor Red -BackgroundColor Black
  }else{
    Write-Host `n'Displaying Current Running Status! '$user_specific_process'.' -ForegroundColor Green -BackgroundColor Black
    get-process $added_wildcard
    Write-Host `n'Would You Like To Quit? Y/n' -ForegroundColor Yellow -BackgroundColor Black
    $chose_to_delete=Read-Host 
    if($chose_to_delete -eq 'y'){
      Write-Host `n'Exiting To Powershell!' -ForegroundColor Red -BackgroundColor Black
      Start-Sleep 1
      clear-history
      clear
      exit(0)
    }
    if($chose_to_delete -eq 'n'){
      Write-Host `n'Stopping all process from user input: '$added_wildcard'!' -ForegroundColor Green -BackgroundColor Black
      Stop-Process -Name $added_wildcard -Force
      Start-Sleep 2.75
      clear-history
    }else{
      Write-Host "Invalid Input Please Try Again`n" -ForegroundColor Magenta -BackgroundColor Black
      Start-Sleep 2.0
      clear-history
     run_asshole
    }
    cls
    }
    }
    }
    
run_asshole
