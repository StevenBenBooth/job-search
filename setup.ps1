# setup task to launch on startup

$taskTrigger = New-ScheduledTaskTrigger -AtLogOn -User "Work"
$taskAction = New-ScheduledTaskAction -Execute "PowerShell" -Argument '-NoProfile -ExecutionPolicy Bypass -File "C:\Users\Work\OneDrive - Cornell University\Personal projects\job-hunt\open_sites.ps1"' -WorkingDirectory "C:\Users\Work\OneDrive - Cornell University\Personal projects\job-hunt"
Register-ScheduledTask 'Open Relevant Searches' -Action $taskAction -Trigger $taskTrigger