#SingleInstance, Force
#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
Process, Priority, %PID%, Low

Loop
{
WinActivate, ahk_class TibiaClient
Sleep, 8000
}
Return