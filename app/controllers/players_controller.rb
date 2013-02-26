class PlayersController < ApplicationController
  def new
  	@player = Player.new
  end

  def show
  	@player = Player.find(params[:id])
  end

  def create
  	@player = Player.new(params[:player])
  	@player.save

  	redirect_to new_player_path if Player.count.odd?
  	redirect_to game_path if Player.count.even?
  end

end
