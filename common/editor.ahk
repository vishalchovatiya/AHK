#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%


GetSelection(timeoutSeconds := 0.5)
{
    Clipboard := "" ; Clear clipboard for ClipWait to function.
    Send ^c ; Send Ctrl+C to get selection on clipboard.
    ClipWait %timeoutSeconds% ; Wait for the copied text to arrive at the clipboard. 
    return Clipboard
}
