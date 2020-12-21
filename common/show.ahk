#Include notify.ahk

; Sample use case 
;
; $#O::Show_Start("- Outlook", "C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE")

Show_Start(title, exe, params = "", toggle = 0)
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