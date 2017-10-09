class ArticlesController < ApplicationController
  before_action :authenticate
  before_action :get_article, only: [:show, :edit, :update, :destroy]

  add_breadcrumb "Blog", :articles_path

  def new
    add_breadcrumb "New article", new_album_path
  end

  def create
    begin
      article = Article.create!(title: params[:article][:title], user_id: session[:current_user_id], body: params[:article][:body], image: params[:article][:image])
      # @album = Album.last
      flash[:success] = "Create article successfully."
      # redirect_to album_path(Album.last.id)
      redirect_to articles_path
      
    rescue ActiveRecord::RecordInvalid => e
      flash[:error] = "Cannot create new article."
      render :new
    end
  end

  def index
    @articles = Article.limit(10).order('created_at DESC')
    # add_breadcrumb "Articles / ", articles_path
  end

  def show
    add_breadcrumb "#{@article.title}", article_path
  end

  def edit
    add_breadcrumb "Edit article", edit_article_path
  end

  def update
    if @article.update(article_params)
      flash[:success] = "Update article #{@article.id} successfully."
      redirect_to article_path(@article.id)
    else
      flash[:error] = "Cannot update article #{@article.id}."
      render :show
    end
  end

  def destroy


    begin
      @article.destroy!
      flash[:success] = "Delete article #{@article.id} successfully."
      redirect_to articles_path
    rescue ActiveRecord::RecordNotDestroyed => e
      flash[:error] = "Cannot delete article #{@article.id}."
      render :show
    end
  end

  

  private
  def get_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
