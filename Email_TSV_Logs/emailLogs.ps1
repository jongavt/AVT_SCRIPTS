$CredUser = "admin@vms2.avtvms.com"
$CredPassword = "avtc2014"

$computer = gc env:computername

$Msg = New-Object Net.Mail.MailMessage


$Msg.from = "admin@avtvms.com"
$Msg.To.Add("jong@avtinconline.com")
$Msg.To.Add("johnh@avtinconline.com")
$Msg.Subject = "$computer Log Files"
$Msg.Body = "Attached are log files from $computer" 
$TSV = "C:\AVT INC\Logs\TSV.log"
$CardSettler = "C:\AVT INC\Logs\CardSettler.log"
$DataUploader = "C:\AVT INC\Logs\DataUploader.log"
$DataDownloader = "C:\AVT INC\Logs\DataDownloader.log"

$Attach1 = new-object Net.Mail.Attachment($TSV)
$Attach2 = new-object Net.Mail.Attachment($CardSettler)
$Attach3 = new-object Net.Mail.Attachment($DataUploader)
$Attach4 = new-object Net.Mail.Attachment($DataDownloader)

$Msg.Attachments.Add($Attach1)
$Msg.Attachments.Add($Attach2)
$Msg.Attachments.Add($Attach3)
$Msg.Attachments.Add($Attach4)


$SMTPServer = "209.236.75.221" 
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587) 

 

$SMTPClient.EnableSsl = $true 
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential($CredUser, $CredPassword);
[System.Net.ServicePointManager]::ServerCertificateValidationCallback = { return $true } 
$SMTPClient.Send($Msg)
