#Requires AutoHotkey v2.0
#SingleInstance Force
InstallKeybdHook
InstallMouseHook
SetKeyDelay 50, 50
SetMouseDelay 70

F11:: {
    static toggle := false
    SetTimer(StarfieldCraft, 30 * (toggle ^= 1))
    BlockInput(toggle ? 'MouseMove' : 'MouseMoveOff')
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

/*  Slow mode
StarfieldCraft() {
    Sleep(5)
    SendEvent('e')
    SendEvent('{Click}')
    Sleep(5)
    SendEvent('{Click}')
    Sleep(5)
    SendEvent('e')
    SendEvent('{Click}')
}
*/

F12:: {
    BlockInput 'MouseMoveOff'
}
