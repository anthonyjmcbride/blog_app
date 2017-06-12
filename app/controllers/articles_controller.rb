class ArticlesController < ApplicationController
  def new
  end

  def create
    @aticles = Articles.new(params.require(:article).permit(:title, :text))

    @articles.save
    redirect_to @articles
  end

  def show
    @article = Articles.find(params[:id])
  end

private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end
