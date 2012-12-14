class ArticlesController < ApplicationController
  before_filter :check_user, only: [:new, :create]

  def index
  	@articles = {}
    Game.all.each do |game|
      @articles[game.title] = game.articles
    end
  end

  def show
  	@article = Article.find(params[:id])
  end

  def new
  end

  private

  def check_user
    unless current_user
      flash[:error] = "you must log in"
      redirect_to new_user_session_path
    end
  end
end
