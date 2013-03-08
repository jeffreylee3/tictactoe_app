class PlayersController < ApplicationController
  before_filter :get_tictactoe  

  def new
    @tictactoe = Tictactoe.find(params[:tictacto_id]) 
    #@player = @tictactoe.players.build
    2.times { @tictactoe.players.build }
  end

  def index
    @players = Player.all
  end

  def show
  	@player = Player.find(params[:id])
  end

  #
  # 
  #
  def create
    @player = @tictactoe.players.build(params[:player])
    @player.save
    #@players = @tictactoe.players.create(params[:players])

    redirect_to edit_tictacto_path(@tictactoe)
  end

  def edit
    @player = Player.find(params[:tictacto_id])
  end

  def update
    #@player = Player.find(params[:id])
    #@player.update_attributes(params[:player]) #includes db save (@tictactoe.save)
    #redirect_to players_path
  end

  private
  def get_tictactoe
    @tictactoe = Tictactoe.find(params[:tictacto_id])
  end
end

