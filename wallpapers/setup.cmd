@echo off

::  File:       setup.cmd
::  Author:     Julian Orchard <hello@julianorchard.co.uk>
::  Tag Added:  2022-03-28
::  Desciption: Run the wallpaper on startup... and NOW.

:: Set on Startup
  echo "powershell.exe -ExecutionPolicy bypass -WindowStyle hidden -File 'C:\cmd\wallpapers\pape-set.ps1'" > "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Start-up\pape-execute.cmd"
:: Run Now
  powershell.exe -ExecutionPolicy bypass -WindowStyle hidden -File 'C:\cmd\wallpapers\pape-set.ps1' > "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Start-up\pape-execute.cmd"
