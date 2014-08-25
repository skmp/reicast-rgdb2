class GamesController < ApplicationController
  def index
  	@games = Game.includes(discs: :videos)
  end
end
