class ArticlesController < ApplicationController
  # this method is to get all the articles from the database in descending order by published_at
  def index
    begin 
      @articles = Article.all.order(published_at: :desc)
      render json: @articles
    rescue ActiveRecord::RecordNotFound
      render json: @articles.errors
    end
  end

  # this method is to create a new article and save it to the database
  def create
    @article = Article.new(article_params)
    if @article.valid?
      @article.save
      render json: @article, status: :created
    else
      render json: { errors: @article.errors.full_messages }, status: :unprocessable_entity
    end
  end
  # this method is to get a specific article by its id from the database
  def show
    begin
    @article = Article.find(params[:id])
    render json: @article
    rescue ActiveRecord::RecordNotFound
      render json: {error: "Article not found"}, status: :not_found
    end
  end

  # since an article is not supposed to be deleted update or patch, this method is to prevent that from happening and lets the user know that the method is not allowed 
  def destroy
    render json: {error: "Methods not allowed"}, status: :method_not_allowed
  end

  def update
    render json: {error: "Methods not allowed"}, status: :method_not_allowed
  end

  def patch
    render json: {error: "Methods not allowed"}, status: :method_not_allowed
  end
  
  #the article params method is to permit the parameters that are allowed to be passed in the body of the request
  def article_params
    return params.permit(:title,
    :content,
    :author,
    :category,
    :published_at)
  end
end
