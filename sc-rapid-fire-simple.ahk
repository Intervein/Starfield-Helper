#Requires AutoHotkey v2.0
#SingleInstance Force
InstallKeybdHook
InstallMouseHook

on := False

CapsLock:: {
 Global on := !on
 SoundBeep 1000 + 500 * on 
}
#HotIf on
~$LButton:: {
    While GetKeyState("LButton", "P") {
    Click ("D")
    Sleep(20)
    Click ("U")
    Sleep(20)
    }
}
#HotIf

F10::ExitApp
