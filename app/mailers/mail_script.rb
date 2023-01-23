require 'net/smtp'
module MailScript
def send_message(message_,to)
@FROM_EMAIL = "bkimutai2021@gmail.com"
@PASSWORD = "cwufeiruewdwcvhh"
@TO_EMAIL = to
@smtp = Net::SMTP.new 'smtp.gmail.com', 587
@message = <<END_OF_MESSAGE
From: Lokwa Innovation <bkimutai2021@gmail.com>
To: ToName <bkimutai2021@gmail.com>
Subject: Account activation code.
Content-Type: text/html
Content-Transfer-Encoding:8bit
<strong>#{message_}</strong>
<p>Lokwa Team.</p>   
END_OF_MESSAGE
@smtp.start('received-from-goes-here', @FROM_EMAIL, @PASSWORD, :plain)
@smtp.finish() 
end
end