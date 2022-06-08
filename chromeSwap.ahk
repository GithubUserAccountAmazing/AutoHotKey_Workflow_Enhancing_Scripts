#XButton1::

;------------------------------------------------------------------------------------
; Uses the first extended mouse button to open chrome if not already opened.
; 	After opening, it will become fullscreen within the monitor the mouse
; 	is currently in.
;
; If chrome is already opened this script will instead simply make chrome full
; 	screen on the current monitor the mouse is currently in.
;	Useful for quickly swapping the active Chrome window between monitors.
;------------------------------------------------------------------------------------

WinMinimize, ahk_exe chrome.exe

IfWinExist ahk_exe chrome.exe
{
	winactivate ahk_exe chrome.exe
	WinRestore, ahk_exe chrome.exe

	WinGetPos, xtemp, ytemp,,, A
	MouseGetPos, X, Y 

	xpos:=X+xtemp-16
	ypos:=Y+ytemp-16

	WinMove, ahk_exe chrome.exe, , %xpos%, %ypos% 
	WinMaximize, ahk_exe chrome.exe
}

IfWinNotExist ahk_exe chrome.exe
{
	Run, "C:\Program Files\Google\Chrome\Application\chrome.exe"

	WinWait ahk_exe chrome.exe
	WinActivate ahk_exe chrome.exe
	WinRestore, ahk_exe chrome.exe

	WinGetPos, xtemp, ytemp,,, A
	MouseGetPos, X, Y 

	xpos:=X+xtemp-16
	ypos:=Y+ytemp-16

	WinMove, ahk_exe chrome.exe, , %xpos%, %ypos% 
	WinMaximize, ahk_exe chrome.exe
}

return