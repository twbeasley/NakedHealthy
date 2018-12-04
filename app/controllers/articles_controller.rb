class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new
  end
  
  def create
    Article.create(article_params)
    redirect_to articles_path
  end
  
  def show
    @article = Article.find(params[:id])
    @comment = Comment.new
  end
  
  private
  
  def article_params
    params.require(:article).permit(:name, :description, :category, :photo)
  end
end
