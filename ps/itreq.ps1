#!/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe -File

#  File:        itreq.ps1
#  Author:      Julian Orchard <hello@julianorchard.co.uk>
#  Tag Added:   2022-05-05
#  Description: Send IT Requests.

function Send-Outlook-Email {

# Arguments for Mail
  param (
    $Subject,
    $Body
  )

# Outlook ComObject
  $outlook = New-Object -ComObject Outlook.Application
  $outlookMail = $outlook.CreateItem(0)

# Mail Content
  $outlookMail.To = "Julian.Orchard@wessexlifts.co.uk" 
  $outlookMail.Subject = "$Subject" 
  $outlookMail.Body = "$Body"
  $outlookMail.SentOnBehalfOf = "Test"

# Mail Send
  $outlookMail.Send()
  Write-Host "Email Sent"

  Start-Sleep 2

  ## Don't Quit Outlook, I might be using it...
}

# Testing
  Send-Outlook-Email -Subject $args[0] -Body $args[1]

