class ArticlesController < ApplicationController
  before_action :authenticate
  before_action :get_article, only: [:show, :edit, :update, :destroy]

    add_breadcrumb "Articles", :articles_path
  def index
    @articles = Article.limit(10)
    # add_breadcrumb "Articles / ", articles_path
  end

  def show
    add_breadcrumb "#{@article.title}", article_path
  end

  def edit

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
