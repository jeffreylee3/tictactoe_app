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
    redirect_to edit_tictacto_path(1) if Player.count.even?  # need way to identify ID value of current board
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    @player.update_attributes(params[:player]) #includes db save (@tictactoe.save)
    redirect_to players_path
  end

end
