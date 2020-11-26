class InquiryMailer < ApplicationMailer
	def send_mail(inquiry)
	    @inquiry = inquiry
	    mail(
	    	from: 'sakanatarou891@gmail.com',
	      	to:   'sakanatarou891@gmail.com',
	      	subject: 'お問い合わせ通知'
	    )
	end
end
