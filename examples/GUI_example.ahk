GUI, Add, Edit, w150 number vValue, 0 ; Number specifies a numbers-only edit field. g<Subroutine> specifies a subroutine to run when the value of control changes.
GUI, Add, button,, Increment
GUI, Add, button, xp+70 yp, Decrement ; xp+70 and yp are merely positioning options
GUI, Show, w200 y200, Title	 ; Shows the GUI.
;No timer is needed
return 				 ; ----------End Auto-Execute Section----------

ButtonIncrement: ; Callbacks
    GUI, Submit, NoHide ; "Set the contents of each variable to the contents of their corresponding controls without hiding the GUI"
    Value++ ; Increment Value
    GUIControl,, Value, %value% ; "Set the text of the control which alters the variable 'value' to the contents of 'value'"
return

ButtonDecrement: ; Callbacks
    GUI, Submit, Nohide
    Value--
    GuiControl,, Value, %value%
return

GuiClose: ; Callbacks
ExitApp ; Ensures the script ends when the GUI is closed.