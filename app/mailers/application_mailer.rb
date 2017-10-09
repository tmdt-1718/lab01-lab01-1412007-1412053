class ApplicationMailer < ActionMailer::Base
	default from: 'novemberrainloveyouforever@gmail.com'
	layout 'mailer'

	def sample_email user
		@user = user
		mail to: @user.email, subject: "MyBlog: Successfully Login"
	end
end
