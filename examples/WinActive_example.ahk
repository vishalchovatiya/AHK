f11::
    IfWinActive, Untitled - Notepad
    {
        WinMaximize ; Maximizes the Notepad window found by IfWinActive above.
        Send, See.... The power of AHK.{Enter}
        return
    }
    else
    {
        Send, {f11}
    }
Return