class ArticlesController < ApplicationController
  
  before_action :find_article, only: [:show, :edit, :update, :destroy]
 
  def index
  if params[:category].blank?
    @articles = Article.all.order("created_at DESC")
    else
    @category_id = Category.find_by(name: params[:category]).id
    @articles = Article.where(category_id: @category_id).order("created_at DESC")
  end
end
  def new
    @article = Article.new
    @article.photos.build
  end
  
  def create
    @article =  Article.new(article_params)
    @article.save
    redirect_to articles_path
  end
  
  def show
    @comment = Comment.new
  end
  
  def edit
  end
  
  def update
    if @article.update(article_params)
      redirect_to @article, notice: "Update Succesful"
    else
      render 'edit'
    end
  end
  
  def destroy
    @article.destroy
    redirect_to root_path, notice: 'Post destroyed'
  end
  
  private
  
  def article_params
    params.require(:article).permit(:name, :description, :category_id, photos_attributes:[:image, :paragraph])
  end
  
  def find_article
    @article = Article.find(params[:id])
  end
end
