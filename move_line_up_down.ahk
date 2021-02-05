#SingleInstance,Force

#IfWinNotActive ahk_exe Code.exe ; Run everywhere except on vscode

Ctrl & Up::
if GetKeyState("Shift") ; Check if Shift is pressed
{
	MoveLineUp()
}
return

Ctrl & Down::
if GetKeyState("Shift") ; Check if Shift is pressed
{
	MoveLineDown()
}
return

#IfWinNotActive

MoveLineUp(){
	old_clipboard = %clipboard%		; Store clipboard
	Send {HOME 2}+{END}				; Select line
	Send ^x{Delete}{Up}				; Cut line
    ClipWait, 2 					; Wait for data to fill clipboard
	Send ^v{Enter}{Up}				; Paste line
	clipboard = %old_clipboard%		; Restore clipboard
}

MoveLineDown(){
	old_clipboard = %clipboard%		; Store clipboard
	Send {HOME 2}+{END}				; Select line
	Send ^x{Delete}{Down}			; Cut line
    ClipWait, 2 					; Wait for data to fill clipboard
	Send ^v{Enter}{Up}				; Paste line
	clipboard = %old_clipboard%		; Restore clipboard
}

