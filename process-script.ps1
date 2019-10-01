<#
Simple Powershell Script ASking User For Input and Killing Processes
by shad0wmast3r ("Andy Kukuc") 
ALSO WRITTEN IN VIM BASH FOR WINDOWS ALL GLORY TO VIM
#>
while($true){
  Write-Host 'Simple Powershell script to kill proccsess with a .ps1 script.'`n'By: shad0wmast3r (Andy Kukuc).'`n
  $user_specific_process=Read-Host 'Please enter the process name you wish to kill.'`n
  if((Get-Process -name $user_specific_process -ErrorAction SilentlyContinue) -eq $null){
    Write-Host 'If Statment Worked Quit Wiht incorrect spelling'
    $false
  }else{
    start-sleep -s 5
    Write-Host 'Killing process with Stop-Process -Name '$user_specific_process'.'`n
    Stop-Process -Name $user_specific_process
    Write-Host 'It Worked'
    break
    }
  }
