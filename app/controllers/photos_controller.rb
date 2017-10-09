class PhotosController < ApplicationController
	before_action :authenticate

	# @photo = Photo.find(params[:id2])
	# add_breadcrumb "#{@photo.id}", :photo_path
	# add_breadcrumb "dsffd", :photo_path
	# @album = Album.find(params[:id1])
	# add_breadcrumb "aaaa", :album_path(params[:id1])
	# add_breadcrumb "aaaa", photo_path(@album.id)

	# @album = Album.find(params[:id])
	# add_breadcrumb "", album_path

	def create
		begin
			@album = Album.find(params[:id])
			@photo = @album.photos.create!(image: params[:photo][:image])
			flash[:success] = "Add successfully."

			redirect_to album_path(@album.id)

		rescue ActiveRecord::RecordInvalid => e
			flash[:error] = "Cannot add photo."
			render :new
		end		
	end

	def show
		@photo = Photo.find(params[:id2])
		add_breadcrumb "", :photo_path
		@album = Album.find(params[:id1])
		@photo = Photo.find(params[:id2])

		
	end

	def destroy
		@photo = Photo.find(params[:id2])
		@album = Album.find(params[:id1])
		begin
			@photo.destroy!
			flash[:success] = "Delete photo #{@photo.id} successfully."
			redirect_to album_path(@album.id)
		rescue ActiveRecord::RecordNotDestroyed => e
			flash[:error] = "Cannot delete photo #{@article.id}."
			render :show
		end

	end

end
