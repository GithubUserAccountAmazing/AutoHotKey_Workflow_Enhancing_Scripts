; display the date and time at the top of the scren always on top. 
; useful if you hide your taskbar by default but still want to see the time.


#SingleInstance force

Gui, +AlwaysOnTop +ToolWindow -SysMenu -Caption
Gui, Color, CCCCCC
Gui, Font, cFFFFFF s10 , verdana  ;white
Gui, Add, Text, vD y0 BackgroundTrans, %A_YYYY%-%A_MM%-%A_DD% %a_hour%:%a_min%:%a_sec%
Gui, Show, NoActivate x877 y3,uptime  ; screen position here
WinSet, TransColor, CCCCCC 255,uptime
SetTimer, RefreshD, 1000
return

RefreshD:
GuiControl, , D, %A_YYYY%-%A_MM%-%A_DD% %a_hour%:%a_min%:%a_sec%
return