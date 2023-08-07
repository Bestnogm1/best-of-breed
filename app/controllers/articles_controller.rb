class ArticlesController < ApplicationController

  def index
    begin 
      @articles = Article.all.order(published_at: :desc)
      render json: @articles
    rescue ActiveRecord::RecordNotFound
      render json: @articles.errors
    end
  end

  def create
    @article = Article.new(article_params)
    if @article.valid?
      @article.save
      render json: @article, status: :created
    else
      render json: { errors: @article.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    begin
    @article = Article.find(params[:id])
    render json: @article
    rescue ActiveRecord::RecordNotFound
      render json: {error: "Article not found"}, status: :not_found
    end
  end
  
  def article_params
    return params.permit(:title,
    :content,
    :author,
    :category,
    :published_at)
  end
end
