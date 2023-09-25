#Requires AutoHotkey v2.0
$e:: {
 SetKeyDelay 25, 25
 While GetKeyState('e', 'P')
  SendEvent 'e'
}