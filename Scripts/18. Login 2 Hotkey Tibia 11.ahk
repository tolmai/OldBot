﻿#SingleInstance, Force
#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
ListLines Off
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
SendMode Input
Process, Priority, %PID%, Low


^Home::
    {
    Gui, Submit, NoHide
    IniRead, AccountNameReconnect2Tibia11, settings.ini, settings, AccountNameReconnect2Tibia11
    IniRead, PasswordReconnect2Tibia11, settings.ini, settings, PasswordReconnect2Tibia11
    IniRead, TimesToPressDown2Tibia11, settings.ini, settings, TimesToPressDown2Tibia11
    #IfWinActive, ahk_class Qt5QWindowOwnDCIcon
    Send, %AccountNameReconnect2Tibia11%
    Random, R, 150, 250
    Sleep, R
    Send, {TAB}
    Random, R, 50, 100
    Sleep, R
    Send, %PasswordReconnect2Tibia11%
    Random, R, 150, 250
    Sleep, R
    Send, {ENTER}
    Sleep, 1500
    TimesToPressDown2Tibia11 := TimesToPressDown2Tibia11 - 1
    Send, {DOWN %TimesToPressDown2Tibia11%}
    Random, R, 300, 400
    Sleep, R
    Send, {ENTER}
    Return
    }
Return