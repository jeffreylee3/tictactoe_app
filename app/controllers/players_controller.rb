class PlayersController < ApplicationController
  before_filter :get_tictactoe  

  def new
    @tictactoe = Tictactoe.find(params[:tictacto_id]) 
    @player = @tictactoe.players.build
  end

  def index
    @players = Player.all
  end

  def show
  	@player = Player.find(params[:id])
  end

  def create
    @player = @tictactoe.players.build(params[:player])
    @player.save
  	redirect_to new_tictacto_player_path(@tictactoe) if Player.count.odd?
    redirect_to edit_tictacto_path(@tictactoe) if Player.count.even?  # need way to identify ID value of current board
  end

  def edit
    @player = Player.find(params[:tictacto_id])
  end

  def update
    @player = Player.find(params[:id])
    @player.update_attributes(params[:player]) #includes db save (@tictactoe.save)
    redirect_to players_path
  end

  private
  def get_tictactoe
    @tictactoe = Tictactoe.find(params[:tictacto_id])
  end
end
