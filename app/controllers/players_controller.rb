class PlayersController < ApplicationController
  def new
  	@player = Player.new
  end

  def index
    @players = Player.all
  end

  def show
  	@player = Player.find(params[:id])
  end

  def create
    @player = curr_board.players.build(params[:player])
    @player.save
  	redirect_to new_player_path if Player.count.odd?
    redirect_to tictactoes_path if Player.count.even?
  end

end
