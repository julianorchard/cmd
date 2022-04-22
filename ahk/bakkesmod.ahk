/* 
  File:        bakkesmod.ahk
  Author:      Julian Orchard <hello@julianorchard.co.uk>
  Tag Added:   2022-02-24
  Description: Run Bakkesmod when Rocket League opens
 */
#Persistent
; Check Every Half Minute
  SetTimer, CheckForRL, 30000
; Open If RL
  CheckForRL:
  if WinExist("Rocket League") and !WinExist("ahk_exe BakkesMod.exe")
  {
    Run, "D:\Programs\Bakkesmod"
  }
  Return
