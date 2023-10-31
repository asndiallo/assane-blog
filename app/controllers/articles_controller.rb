# frozen_string_literal: true

# Articles controller
class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to @article
  end

  def edit; end

  def update; end

  def destroy; end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
