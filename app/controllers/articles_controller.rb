class ArticlesController < ApplicationController
  def index

  	@articles = {}
    Game.all.each do |game|
      @articles[game.title] = game.articles
    end
  end

  def show
  	p params
  	@article = Article.find(params[:id])
  end

  def new
  end
end
