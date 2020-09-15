do{
Get-WmiObject Win32_process -filter 'name = "rustc.exe"' | foreach-object { $_.SetPriority(64) } | Out-Null
sleep 1
}while(1)
