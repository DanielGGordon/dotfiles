; File for storing text generating and manipulating ListHotkeys

::listgen::val sampleList = Vector("This","is","a","vector","of","strings")
::forcomp::
    Send val sampleCollection = List("sample","hi")`n
    Send val someVar = for {{}`n
    Send     string <- sampleCollection`n
    Send     if string == "hi"{Down}{Space}yield string
Return
; textgen (shebang) output(#!/bin/bash)
::shebang::{#}{!}/bin/bash
; textgen (scalalsgrep) output(val javaProcs = ("ls" {#}| "grep sbt").lineStream.toList)
::scalalsgrep::val javaProcs = ("ls" {#}| "grep sbt").lineStream.toList
; textgen (gitger) output(git push origin HEAD:refs/for/master)
::gitger::git push origin HEAD:refs/for/master
; textgen (Tuesday) output(Tuesday)
::Teusday::Tuesday
; textgen (btw) output (by the way)
::btw::by the way
::br::<br>

; hotkey (CTRL + SHIFT + d) function(send 'logout' and {Enter} key)
; Interferes with sublime text command for line duplication
; ^+d::
;     Send, logout
;     Send {Enter}
; Return


::ntt::select * from nt_
::ssf::select * from
::scf::select count (*) from
::rlp::REL_PMOB_17.1.0


::ttt::there isn't
::tta::there aren't
::asdf::address

; textgen(]d) output(Current time)
:*:]d::
  FormatTime, CurrentDateTime,, M/d/yyyy h:mm tt
  SendInput %CurrentDateTime%
return

#If GetKeyState("Shift", "P")
  F9 & ]:: 
  send {.map}
  send Space
  send {{}e
  send {=}
  send {>}
  send {Enter}
#If


::dgm::Dgordon8765@gmail.com
F9 & /:: 
  send {/}
  send {*} 
  send {*} 
  send {Enter}
return 