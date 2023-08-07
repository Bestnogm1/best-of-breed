class ArticlesController < ApplicationController

  def index
    begin 
      @articles = Article.all.order(published_at: :desc)
      render json: @articles
    rescue ActiveRecord::RecordNotFound
      render json: @articles.errors
    end
  end
  
end
