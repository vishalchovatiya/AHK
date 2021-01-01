#SingleInstance,Force

^+c::
{
	Send, ^c
    ClipWait, 2 ; Wait for data to fill clipboard
	Run, http://www.google.com/search?q=%clipboard%
	Return
}
