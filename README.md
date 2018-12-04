# WinActivateAndWait

WinActivateAndWait is a simple AutoHotkey function which combines the functionality of
[WinActivate](https://autohotkey.com/docs/commands/WinActivate.htm) and
[WinWaitActive](https://autohotkey.com/docs/commands/WinWaitActive.htm) into
a single function.

### Why is this useful?

While the AutoHotkey documentation suggests it is usually unneccessary to follow
WinActivate with WinWaitActive, certain applications may be temporarilly
unresponsive or delayed when responding to WinActivate.

### Why did I write this?

I was looking for a reliable way of activating Java-based web applications. I found that
WinActivate wasn't consistenly reliable, so I wrote this instead.

[Credit to Jim U for the idea](https://stackoverflow.com/q/46061982/3357935)

### Example Usage

```
WinActivateAndWait("Untitled - Notepad", , 2)
if ErrorLevel
{
   MsgBox, Window could not be activated
   return
}
```

### TODO

- Add separate ErrorLevel if window does not exist
- Provide better usage examples
  - Show how function can replace need for IfWinExist
