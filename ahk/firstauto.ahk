#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance

;hotkey (CTRL + WIN + z) function (Refresh AHK script in workspace)
^<#z::
   Run, "C:\Users\gordon\workspace\firstauto.ahk"
   Sleep 50
   Send {enter}
Return
;
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

;hotkey (ALT + WIN + C) function (Open Calculator)
!<#c::Run calc.exe

;hotkey (WIN + V) function (Open VPN Apps)
<#v::
    Run, "C:\Program Files (x86)\Symantec\VIP Access Client\VIPUIManager.exe"
    Sleep 150
    Run, "C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\vpnui.exe"
Return

;hotkey (CTRL + WIN + j) function (Open Git Bash)
^<#j:: Run, "C:\Program Files\Git\git-bash.exe"

; #############################################################################

; ########################### CHROME RELATED HOTKEYS ###########################

; Cannot properly map anything to "^Tab". For some reason, it always adds a shift
+XButton1:: Send {LCtrl down}{LShift down}{Tab}{LCtrl up}{LShift up}
+XButton2::Send {LCtrl down}{Tab}{LCtrl up}

; Open new tab in chrome and paste link from clipboard
^<#x::
  Send ^C
  Sleep 50
  Send #2
  Sleep 50
  Send ^t
  sleep 50
  Send ^l
  sleep 50  
  Send ^v
  sleep 50
  Send {Enter}
Return

;; Jenkins Launch Arbitrary Shell Command
;^Xbutton2::
;  send {^l}
;  SendRaw {https://cme-pmob.jenkins.release.in.here.com/job/GDF_EXTRACTION/job/Run%20Arbitrary%20Shell%20Command/build?delay=0sec}
;  send {enter}
;Return

; #############################################################################


;############################### TERMINAL HOTKEYS #############################

; ################### Code Generators ####################
::listgen::val sampleList = Vector("This","is","a","vector","of","strings")
::forcomp::
    Send val sampleCollection = List("sample","hi")`n
    Send val someVar = for {{}`n
    Send     string <- sampleCollection`n
    Send     if string == "hi"{Down}{Space}yield string
Return

::shebang::{#}{!}/bin/bash
::scalalsgrep::val javaProcs = ("ls" {#}| "grep sbt").lineStream.toList
::gitger::git push origin HEAD:refs/for/master

; Create case match template
;::casematches::
;(
;def listAnalysis(list: List[Any]) = list match {
;  case Nil => "empty"
;  case 'a' :: tail => "starting by 'a'"
;  case (head:Int) :: _ if head > 3 => "starting by an int greater than 3"
;  case (head:Int) :: _ => "starting by an int"
;  case _ => "whatever"
;}
;)

::Teusday::Tuesday
::btw::By the way

^+d::
    Send, logout
    Send {Enter}
Return

;##########################################################################

; ################### MOUSE SENSITIVITY SETTINGS #########################

^<#m::
  ; 'UInt' is the type of the first parm
  ; The first param VALUE is "0x71", which is just hexidecimal for 113
  ; The next param is (UInt, 0), where '0' is required for "0x71"
  ; The pvParam parameter is an integer between 1 (slowest) and 20 (fastest).
  DllCall("SystemParametersInfo", UInt, 0x71, UInt, 0, UInt, 10, UInt, 0)
Return

; When Roccat is plugged in 
^<#n::
  DllCall("SystemParametersInfo", UInt, 0x71, UInt, 0, UInt, 4, UInt, 0)
Return
;##########################################################################

; ################### AUTO HOT KEY IDEAS #################
;
; Remap ^] to +tab in gmail so I can just use +tab to indent a list
; Remap "casematch + tab" to generate a case match template
;

; Type the date using "]d"
:*:]d::  ; This hotstring replaces "]d" with the current date and time via the commands below.
FormatTime, CurrentDateTime,, M/d/yyyy h:mm tt  ; It will look like 9/1/2005 3:53 PM
SendInput %CurrentDateTime%
return
  
; ########################### CAPSLOCK REMAPPING ###########################
; >^ is right control
; Remap Capslock because you never use it
; Now Capslock can be used as control
; >^Capslock::Capslock
; Capslock::Ctrl
; ##########################################################################
