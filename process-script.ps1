<#
Simple Powershell Script ASking User For Input and Killing Processes
by shad0wmast3r ("Andy Kukuc") 
ALSO WRITTEN IN VIM BASH FOR WINDOWS ALL GLORY TO VIM
#>
start 'C:\Windows\System32\notepad.exe'
function run_asshole{
  cls
  #start 'C:\Windows\System32\notepad.exe'
while($true){
  Write-Host 'Simple Powershell script to kill proccsess.'
  Write-Host 'By: shad0wmast3r (Andy Kukuc).'`n -ForegroundColor Red -BackgroundColor Black
  $user_specific_process=Read-Host 'Please enter the process name you wish to kill.'`n
  $added_wildcard=$user_specific_process+"*"
  #Write-Host 'Printing Users Input And Adding A Wildcard'$added_wildcard'.' -ForegroundColor Cyan`n
  #Start-Sleep 3
  if((Get-Process -name $added_wildcard -ErrorAction SilentlyContinue) -eq $null){
    Write-Host 'Invalid Input'$added_wildcard'.'`n -ForegroundColor Red -BackgroundColor Black
  }else{
    Write-Host `n'Killing process with Stop-Process -Name '$user_specific_process'.' -ForegroundColor Green -BackgroundColor Black
    get-process $added_wildcard
    Stop-Process -Name $added_wildcard -Force
    Start-Sleep 3
    cls
    }
    }
    }
    
run_asshole
