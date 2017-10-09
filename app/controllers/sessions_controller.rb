class SessionsController < ApplicationController
	def new
		
	end

	

	def create
		user = User.find_by(email: session_params[:email])
		# user.authenticate(session_params[:password])
		if user.nil?
			flash[:error] = "Wrong email or password."
			render :new
		else
			user.try(:authenticate, session_params[:password])
			if !user.try(:authenticate, session_params[:password])
				flash[:error] = "Wrong email or password."
				render :new
			else
				login(user)
				flash[:success] = "Login successfully."
				redirect_to home_path
			end
		end
	end

	# def create
	# 	begin
	# 		user = User.authenticate!(session_params)
	# 		login(user)
	# 		flash[:success] = "Login successfully."
	# 		redirect_to articles_path
	# 	rescue ActiveRecord::RecordNotFound => e
	# 		flash[:error] = "Wrong email or password."
	# 		render :new
	# 	end
	# end

	def destroy
		logout

		redirect_to login_path
	end

	private
	def session_params
		params.require(:session).permit(:email, :password)
	end
end
