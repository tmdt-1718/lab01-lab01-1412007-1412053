class AboutsController < ApplicationController
	before_action :authenticate

    add_breadcrumb "About", :abouts_path

	def index

	end
end