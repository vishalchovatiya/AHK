#Include %A_ScriptDir%\common\common.ahk
#If GetKeyState("Capslock", "P")

$Up:: ; Convert text to upper
    SetStoreCapsLockMode Off
    selection := GetSelection()
    StringUpper selection, selection
    Send %selection%
    return

$Down:: ; Convert text to lower
    selection := GetSelection()
    StringLower selection, selection
    Send %selection%
    return

Up & Down:: ; Convert text to capitalized
    selection := GetSelection()
    StringUpper selection, selection, T
    Send %selection%

