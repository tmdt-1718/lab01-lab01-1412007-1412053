class HomesController < ApplicationController
	before_action :authenticate

	add_breadcrumb "Home", :home_path

	def index
		# add_breadcrumb "Home / ", home_path
	end
end
