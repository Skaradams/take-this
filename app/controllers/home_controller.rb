class HomeController < ApplicationController
  def index
  	@games = Game.includes(:articles)
  end
end
