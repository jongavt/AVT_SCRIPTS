cimport smtplib
import mimetypes
import email
import email.mime.application
import time

date = time.strftime("%Y%m%d")


msg = email.mime.Multipart.MIMEMultipart()
msg['Subject'] = 'Utique Sales Report'
msg['From'] = 'sales@utique.com'
msg['To'] = 'jong@avtinconline.com'


body = email.mime.Text.MIMEText("""Attached is the sales report.""")
msg.attach(body)

filename='salesReports/salesReport_' + date + '.csv'
fp=open(filename,'rb')
att = email.mime.application.MIMEApplication(fp.read(),_subtype="csv")
fp.close()
att.add_header('Content-Disposition','attachment',filename='salesReport_' + date + '.csv')
msg.attach(att)

 
s = smtplib.SMTP_SSL('vms2.avtvms.com',587)
s.login('admin@vms2.avtvms.com','avtc2014')
s.sendmail('jong@avtinconline.com',['jong@avtinconline.com'], msg.as_string())
s.quit()

