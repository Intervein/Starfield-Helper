#Requires AutoHotkey v2.0
#SingleInstance Force
InstallKeybdHook

Numpad3:: {
    static toggle := false
    SetTimer(Espam, 30 * (toggle ^= 1))
}

Espam() {
Send "{e Down}"
Sleep 30
Send "{e Up}"
Sleep 15
}

^Numpad3::ExitApp
