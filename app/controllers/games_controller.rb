class GamesController < ApplicationController
  def index
	response.headers.except! 'X-Frame-Options'
  	@q = Game.search(params[:q])
  	@games = @q.result.includes(discs: :videos).page params[:page]
  end
end
