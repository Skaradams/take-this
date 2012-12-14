class HomeController < ApplicationController
  def index
  	@articles = {}
    Game.all.each do |game|
      @articles[game.title] = game.articles
    end
  end
end
