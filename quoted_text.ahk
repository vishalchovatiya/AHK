#SingleInstance,Force

$^+q::QuoteSelection() ; Ctrl+Shift+Q

QuoteSelection()
{
    selection := GetSelection() ; Get selected text.
    PasteText(Quote(selection)) ; Quote the text and paste it back.
}

GetSelection(timeoutSeconds := 0.5)
{
    Clipboard := "" ; Clear clipboard for ClipWait to function.
    Send ^c ; Send Ctrl+C to get selection on clipboard.
    ClipWait %timeoutSeconds% ; Wait for the copied text to arrive at the clipboard.
    return Clipboard
}

PasteText(s)
{
    Clipboard := s ; Put the text on the clipboard.
    Send ^v ; Paste the text with Ctrl+V.
}

Quote(s)
{
    return """" . s . """"
}