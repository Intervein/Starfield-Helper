SetKeyDelay 50, 50

Numpad3:: {
    static toggle := false
    SetTimer(Espam, 30 * (toggle ^= 1))
}

Espam() {
    SendEvent('e')
    SendEvent('e')
}


