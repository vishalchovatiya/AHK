#Include notify.ahk

; Sample use case 
;
; $#O::ShowApp("- Outlook", "C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE")
; $#C::ShowDir("C:\")

ShowApp(title, exe, params = "", toggle = 0)
{
	If WinActive(title) and toggle
    {
        Send, !{Tab}
		WinMinimize %title%
    }
	Else
	{
		IfWinExist, %title%
		{
			WinGet, winCount, Count, % title
		    If winCount > 1
		        WinActivateBottom, % title
		    Else
		        WinActivate, % title
		}
		Else
		{
        	Run, %exe% %params%,, UseErrorLevel
            If ErrorLevel
            {
                Notify("Executable not found", title,-3,"Style=Win10")
                Return
            }
            WinActivate
		}
	}
}

ShowDir(fullpath)
{
	SetTitleMatchMode, 3
	SplitPath, fullpath, title, dir
	IfWinExist, %title% ahk_class CabinetWClass
		WinActivate
	Else
	{
		Run, %fullpath%
		WinActivate
	}
	SetTitleMatchMode, 2
}