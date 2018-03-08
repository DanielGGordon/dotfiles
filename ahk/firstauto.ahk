
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance
#InstallMouseHook
#MaxHotkeysPerInterval 300

SetNumlockState, AlwaysOn
SetCapsLockState, AlwaysOff
SetScrollLockState, AlwaysOff

;#Persistent
;SetTimer, CheckIdle, 60000    ; 60 sec / 1 min
;Return

;CheckIdle:
;If (A_TimeIdle > 60000)
;{
;    Send {RShift}
;}
;Return

; hotkey (Meh + Left Click) function (Focus on window under mouse - without sending keystroke)
^+!LButton:: 
  MouseGetPos,,, hwnd 
  WinActivate, ahk_id %hwnd%
Return  




; hotkey (SUPER2 + z) function (Refresh AHK script in workspace)
^+!z::
  Send ^s
  Run, "C:\Users\gordon\workspace\firstauto.ahk"
  Sleep 200
  Send {enter}
Return

; hotkey (SUPER2 + z) function (Refresh AHK script in workspace)
^+!x::
  Send ^s
  Run, "C:\Users\gordon\workspace\dictionary.ahk"
  Sleep 200
  Send {enter}
Return

; ############################# MAPPING REFERENCE #############################
; ^ = Control Key
; Tab = Tab
; CapsLock = CapsLock
; Enter = Enter
; Esc = Escape
; BS = Backspace
; Shift or + = Shift
; Alt or ! = Alt
; <# = Left Windows Key ># = Right Windows Key
; <^ or >^ = Left or Right Control
; <+ or >+ = Left or Right Shift
; <! or >! = Left or Right Alt
;
; Browser_Back = Back
; Browser_Forward = Forward
; 
; Sending keystrokes:
;   Send {enter}   // will send the enter key
; #############################################################################

; ################################## EXAMPLES #################################
;
; 1. Run some arbitrary program
;   +<#o::Run "C:\Path\to\exe.exe"
;
; #############################################################################

; ################################ OPENING APPS ###############################

; hotkey (ALT + WIN + C) function (Open Calculator)
^#c::Run, calc.exe

; hotkey (WIN + V) function (Open VPN Apps)
#v::
    Run, "C:\Program Files (x86)\Symantec\VIP Access Client\VIPUIManager.exe"
    Sleep 150
    Run, "C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\vpnui.exe"
Return

; hotkey (CTRL + WIN + j) function (Open Git Bash)
^<#j:: Run, "C:\Program Files\Git\git-bash.exe"

; ########################### CHROME RELATED HOTKEYS ###########################

; hotkey (SHIFT + MOUSE_BACK) function (Go to previous tab)
+XButton1:: Send {LCtrl down}{LShift down}{Tab}{LCtrl up}{LShift up}
; hotkey (SHIFT + MOUSE_FORWARD) function (Go to next tab)
+XButton2::Send {LCtrl down}{Tab}{LCtrl up}

; Meh + V, copy highlighted text, open new chrome tab, and go.
^+!#z::
{
 Send, ^c
 Sleep 50
 Run, http://www.google.com/search?q=%clipboard%
 Return
 ; TODO - if context is a terminal, if so, use ctfrl + insert.
}


; #############################################################################

;CapsLock::LCtrl
;LCtrl::CapsLock

; ################### MOUSE SENSITIVITY SETTINGS #########################

; hotkey (CTRL + WIN + m) function(Set mouse speed to 10)
^<#m::
  ; 'UInt' is the type of the first parm
  ; The first param VALUE is "0x71", which is just hexidecimal for 113
  ; The next param is (UInt, 0), where '0' is required for "0x71"
  ; The pvParam parameter is an integer between 1 (slowest) and 20 (fastest).
  DllCall("SystemParametersInfo", UInt, 0x71, UInt, 0, UInt, 10, UInt, 0)
Return

; hotkey (CTRL + WIN + n) function(Set mouse speed to 4)
^<#n::
  DllCall("SystemParametersInfo", UInt, 0x71, UInt, 0, UInt, 4, UInt, 0)
Return

;##########################################################################

; ################### AUTO HOT KEY IDEAS #################
;
; Moving the Mouse

; hotkey (CTRL + SHIFT + q) function(Move the mouse 2560 pixels over to the right)
^+!#F14::MouseMove, 2560, 0, 2, R

; hotkey (CTRL + SHIFT + q) function(Move the mouse 2560 pixels over to the right)
^+!#F13::MouseMove, -2560, 0, 2, R

^+!#F15::SendRaw, %Clipboard%
^+!F12::SendRaw, %Clipboard%

; Make F9 the "SUPER" key
; If you need F9, just do control + F9
; Ideally, this would actually be something like F18 - a button that never gets used.
; I believe this can be done on the new kinesis advantage versions (2015)
; ^F9:: send {F9}



; Open current page in inCognito mode
^+!#b::
  send ^l
  sleep 100
  send ^c
  sleep 100
  send ^+{n}
  sleep 300
  send ^l
  sleep 100
  send ^v
  send {Enter}
return


^+!#F11::WinMove, A,, 0, 0,1430,1280
^+!#F8::WinMove, A,, 0, 0,1300,700
^+!#F9::WinMove, A,, 0, 1280,1430,1280

; --IDEAS. QMK included--

;Custom window management. 1/3rd of size, etc.
;all caps and _ mode. for NT_SOME_TABLE
