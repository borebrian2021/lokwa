require 'net/smtp'
FROM_EMAIL = "bkimutai2021@gmail.com"
PASSWORD = "cwufeiruewdwcvhh"
TO_EMAIL = "bkimutai2021@gmail.com"
smtp = Net::SMTP.new 'smtp.gmail.com', 587
message = <<END_OF_MESSAGE
From: Lokwa Innovation <bkimutai2021@gmail.com>
To: ToName <bkimutai2021@gmail.com>
Subject: Mail From Ruby 
Content-Type: text/html
Content-Transfer-Encoding:8bit
<strong>The beginning of your HTML content.</strong>
<h1>And some headline, as well.</h1>
END_OF_MESSAGE

smtp.start('received-from-goes-here', FROM_EMAIL, PASSWORD, :plain)
smtp.send_message(message, FROM_EMAIL, TO_EMAIL)
smtp.finish()