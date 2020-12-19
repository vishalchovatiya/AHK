#SingleInstance,Force

^+c::
{
	Send, ^c
	Run, http://www.google.com/search?q=%clipboard%
	Return
}
