#SingleInstance,Force
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


GetSelection(timeoutSeconds := 0.5)
{
    Clipboard := "" ; Clear clipboard for ClipWait to function.
    Send ^c ; Send Ctrl+C to get selection on clipboard.
    ClipWait %timeoutSeconds% ; Wait for the copied text to arrive at the clipboard. 
    return Clipboard
}