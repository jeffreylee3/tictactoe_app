class SquaresController < ApplicationController
  before_filter :get_tictactoe

  def new
    @tictactoe = Tictactoe.find(params[:tictacto_id]) 
  	@square = @tictactoe.squares.build

  end

  def create
  	@square = @tictactoe.squares.build(params[:square])
  	@square.save
  	#only redirect if count value = 9 (9 squares)
  	redirect_to new_tictacto_player_path(@tictactoe)
  end


  private

  def get_tictactoe
    @tictactoe = Tictactoe.find(params[:tictacto_id])
  end

end
