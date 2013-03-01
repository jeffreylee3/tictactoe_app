class TictactoesController < ApplicationController

  def show
    @tictactoe = Tictactoe.find(params[:id])
  end

  def new  	
  	@tictactoe = Tictactoe.new
  end

  def index
    @tictactoes = Tictactoe.all
  end

  def create
    @tictactoe = Tictactoe.new
    @tictactoe.squares = Array.new(9)       
    @tictactoe.save
    redirect_to new_player_path
  end

  def update
    @tictactoe = Tictactoe.find(params[:id])
    @tictactoe.update_attributes(params[:tictactoe]) #includes db save (@tictactoe.save)
    redirect_to tictactoes_path
  end

  def edit
    @tictactoe = Tictactoe.find(params[:id])
  end
end
