#Requires AutoHotkey v2.0
#SingleInstance Force
InstallKeybdHook
InstallMouseHook

F11:: {
    static toggle := false
    SetTimer(StarfieldCraft, 30 * (toggle ^= 1))
    MouseMove 1193, 701
}

StarfieldCraft() {
Click 1193, 701, "Down Left"
Sleep 63
Send "{e Down}"
Sleep 31
Click 1193, 701, "Up Left"
Sleep 47
Send "{e Up}"
Sleep 15
}

F10::ExitApp
