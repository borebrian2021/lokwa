require 'net/smtp'
module MailScript
    def send_message(code)
@FROM_EMAIL = "bkimutai2021@gmail.com"
@PASSWORD = "mvodhxqijsrommpr"
@TO_EMAIL = "bkimutai2021@gmail.com"
@smtp = Net::SMTP.new 'smtp.gmail.com', 587
@message = <<END_OF_MESSAGE
From: Lokwa Innovation <bkimutai2021@gmail.com>
To: ToName <bkimutai2021@gmail.com>
Subject: Account activation code.
Content-Type: text/html
Content-Transfer-Encoding:8bit
<strong>Test</strong>
<p>Use the following code to activate your sccount #{code}.</p>   
END_OF_MESSAGE
@smtp.start('received-from-goes-here', @FROM_EMAIL, @PASSWORD, :plain)
@smtp.send_message(@message, @FROM_EMAIL, @TO_EMAIL)
@smtp.finish() 
    end
end
# message = <<END_OF_MESSAGE
# From: YourRubyApp bkimutai2021@gmail.com
# To: BestUserEver bkimutai2021@gmail.com
# Subject: Any email subject you want
# Date: Tue, 02 Jul 2019 15:00:34 +0800

# Lorem Ipsum
# END_OF_MESSAGE
# Net::SMTP.start('smtp.mailtrap.io', 587, 'bkimutai2021@gmail.com', 'mvodhxqijsrommpr', :cram_md5) do |smtp|
#   smtp.send_message message,
#   'bkimutai2021@gmail.com',
#   'bkimutai2021@gmail.com'
# end