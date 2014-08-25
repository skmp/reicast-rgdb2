class GamesController < ApplicationController
  def index
  	@q = Game.search(params[:q])
  	@games = @q.result.includes(discs: :videos).page params[:page]
  end
end
