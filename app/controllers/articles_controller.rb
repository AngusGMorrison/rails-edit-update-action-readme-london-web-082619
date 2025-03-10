class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    #byebug
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:article][:title]
    @article.description = params[:article][:description]
    @article.save
    redirect_to @article
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    article = Article.find(params[:id])
    article.update(
      title: params[:article][:title],
      description: params[:article][:description]
    )
    redirect_to article
  end
end
