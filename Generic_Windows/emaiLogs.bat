$EmailFrom = "logs@avtinc.com"
$EmailTo = "jonrellegomez@gmail.com"
$EmailSubject = "Requested Logs"  
  
$SMTPServer = "https://vms2.avtvms.com"
$SMTPAuthUsername = "admin@vms2.avtvms.com"
$SMTPAuthPassword = "avtc2014"

$emailattachment = "C:\AVT INC\Logs\test.txt"

function send_email {
$mailmessage = New-Object system.net.mail.mailmessage 
$mailmessage.from = ($emailfrom) 
$mailmessage.To.add($emailto)
$mailmessage.Subject = $emailsubject
$mailmessage.Body = $emailbody

$attachment = New-Object System.Net.Mail.Attachment($emailattachment, 'text/plain')
  $mailmessage.Attachments.Add($attachment)


#$mailmessage.IsBodyHTML = $true
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 25)  
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential("$SMTPAuthUsername", "$SMTPAuthPassword") 
$SMTPClient.Send($mailmessage)
}