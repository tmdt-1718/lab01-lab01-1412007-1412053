class AlbumsController < ApplicationController
	before_action :authenticate
	# before_action :get_album , only: [:show]
	add_breadcrumb "Albums", :albums_path

	def show
		@album = Album.find(params[:id])
		@photos = @album.photos
		add_breadcrumb "#{@album.title}", album_path
	end

	def index
		@albums = Album.all
		# add_breadcrumb "Albums / ", albums_path
	end

	def new
		add_breadcrumb "New album", new_album_path
	end

	def create


		begin
			album = Album.create!(title: params[:album][:title], user_id: session[:current_user_id], description: params[:album][:description], cover: params[:album][:cover])
			# @album = Album.last
			flash[:success] = "Create successfully."
			# redirect_to album_path(Album.last.id)
			redirect_to album_path(album.id)
			
		rescue ActiveRecord::RecordInvalid => e
			flash[:error] = "Cannot create new album."
			render :new
		end
	end

	# private
	# def album_params
	# 	params[:album][:user_id] = session[:current_user_id]
	# 	params.require(:album).permit(:title, :user_id, :description, :cover)
	# end


	# private
	# def get_album
	# 	@album = Album.find(params[:id])
	# end
end
