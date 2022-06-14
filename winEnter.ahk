#Enter::

; [super] + [enter]
; opens up file explorer to specified folder

WinGet, path, ProcessPath, A

Run, % "explorer.exe /select," . "\path\to\important\directory"

return

