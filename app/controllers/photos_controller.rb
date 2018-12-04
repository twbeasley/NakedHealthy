class PhotosController < ApplicationController
   def create
    @article = Article.find(params[:article_id])
    @article.photos.create(photo_params)
    redirect_to article_path(@article)
  end  
end
