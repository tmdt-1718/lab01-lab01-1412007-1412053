class UserMailer < ApplicationMailer

	default from: 'novemberrainloveyouforever@gmail.com'

	def login_email(user)
		@user = user
		# @url  = 'http://example.com/login'
		mail(to: @user.email, subject: 'MyBLog: Successful Login')
	end

end

