class CommentsController < ApplicationController
  
  def index
    @comments = Article.find_by(id: params[:article_id]).comments   
  end

  def create
	begin
		@article = Article.find(params[:id])
		@comment = @article.comments.create!(body: params[:comment][:body], user_id: session[:current_user_id])
		flash[:success] = "Add successfully."

		redirect_to article_path(@article.id)

	rescue ActiveRecord::RecordInvalid => e
		flash[:error] = "Cannot add comment."
		render :new
	end		
  end
end
