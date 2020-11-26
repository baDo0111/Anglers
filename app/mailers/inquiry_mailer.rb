class InquiryMailer < ApplicationMailer
	def send_mail(inquiry)
	    @inquiry = inquiry
	    mail(
	    	from: 'sakanatarou891@gmail.com'
	      	to:   ENV['MAIL_TO'],
	      	subject: 'お問い合わせ通知'
	    )
	end
end
