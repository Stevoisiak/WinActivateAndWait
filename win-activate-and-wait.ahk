/**
* Activates the specified window and waits until it is active.
* A combination of WinActivate and WinWaitActive.
*
* ErrorLevel is set to 1 if the command timed out or 0 otherwise.
* Returns true if window is successfully activate or false otherwise
*/
WinActivateAndWait(WinTitle:="", WinText:="", Seconds:="", ExcludeTitle:="", ExcludeText:="")
{
   WinActivate, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
   WinWaitActive, %WinTitle%, %WinText%, %Seconds%, %ExcludeTitle%, %ExcludeText%

   ; Check if window activation was successful
   if !ErrorLevel
      return true ; success
   else
      return false ; fail
}
