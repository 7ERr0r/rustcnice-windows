do{
	try {
		Get-WmiObject Win32_process -filter 'name = "rustc.exe" or name = "rls.exe"' | foreach-object { $_.SetPriority(64) } | Out-Null
	}
	catch {}

	sleep 1
}while(1)
