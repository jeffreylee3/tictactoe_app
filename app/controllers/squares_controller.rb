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
  	if @tictactoe.squares.count == 9
      redirect_to new_tictacto_player_path(@tictactoe) 
    else
      redirect_to new_tictacto_square_path(@tictactoe)
    end
  end


  private
    def get_tictactoe
      @tictactoe = Tictactoe.find(params[:tictacto_id])
    end

end
