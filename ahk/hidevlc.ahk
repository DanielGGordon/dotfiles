#InstallKeybdHook
#Persistent
#HotkeyInterval,100
#NoEnv
SetKeyDelay, –1
SetTitleMatchMode, 2 ; Makes matching the titles easier
SendMode Input
SetWorkingDir %A_ScriptDir%

; put the hiding windows stuff here
^+!d::
{
	WinHide, VLC media player
	Return
}

; put the functions to show everything again here
^+!f::
{
	DetectHiddenWindows, On
	WinShow, VLC media player
Return
}