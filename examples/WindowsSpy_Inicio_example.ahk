$f11::
    #IfWinActive ahk_class Qt5QWindowIcon
        #IfWinActive ahk_exe InicioLauncher.exe
            WinGetPos, X, Y, Width, Height, Inicio Launcher
            if (X == 785 && Y == 399) { ; Default co-ordinate when launcher openss
                Click, 166, 285 ; Click on Gtkwave icon
                MsgBox, Yay.... We created shortcut to Inicio Gtkwave.
            }
            Return