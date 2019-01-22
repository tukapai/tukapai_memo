#!/usr/bin/env python
# -*- coding: utf-8 -*-
import smtplib
from email.mime.text import MIMEText
def test_mail(fromaddr, toaddr, subject, msg):

    m = MIMEText(msg)
    m['Subject'] = subject
    m['From'] = fromaddr
    m['To'] = toaddr

    s = smtplib.SMTP(host="localhost", port=1025)
    s.sendmail(fromaddr, toaddr, m.as_string())
    s.close()

    return "done"
#send test mail
test_mail(from@test_mail.com, to@test_mail.com, this_is_test, test_mail)
