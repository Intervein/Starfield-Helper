SetKeyDelay 50, 50
SetMouseDelay 70

F11:: {
    static toggle := false
    SetTimer(StarfieldCraft, 30 * (toggle ^= 1))
    BlockInput 'MouseMove'
}

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

F12:: {
    BlockInput 'MouseMoveOff'
}