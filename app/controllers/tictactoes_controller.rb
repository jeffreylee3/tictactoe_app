class TictactoesController < ApplicationController
  include TictactoesHelper

  def new  	
  	@tictactoe = Tictactoe.new
  end

  def create
    @tictactoe = Tictactoe.new      

    9.times { @tictactoe.squares.build }
    @tictactoe.squares.each_with_index { |square, index| square.num = index }
    @tictactoe.save
    
    redirect_to new_tictacto_player_path(@tictactoe)
  end

  def update
    @tictactoe = Tictactoe.find(params[:id])
     
    if @tictactoe.update_attributes(params[:tictactoe])                             # includes db save
      if @tictactoe.winner?(p1_moves(@tictactoe))                                   # check game for p1 winner
        set_win_lose_draw(@tictactoe,"win")                                         # set game stat for p1 winner result
        set_first_to_act(@tictactoe)                                                # update first_to_act value for next game
        @tictactoe.save
        redirect_to tictacto_path(@tictactoe)
      elsif @tictactoe.winner?(p2_moves(@tictactoe))                                # check game for p2 winner
        set_win_lose_draw(@tictactoe,"lose")                                        # set game stat for p2 winner result
        set_first_to_act(@tictactoe)                                                # update first_to_act value for next game
        @tictactoe.save 
        redirect_to tictacto_path(@tictactoe)
      elsif @tictactoe.draw?(p1_moves(@tictactoe),p2_moves(@tictactoe))             # check game for draw
        set_win_lose_draw(@tictactoe,"draw")                                        # set game stat for draw result
        set_first_to_act(@tictactoe)                                                # update first_to_act value for next game
        @tictactoe.save      
        redirect_to tictacto_path(@tictactoe)
      else
        redirect_to edit_tictacto_path(@tictactoe)
      end
    else
      flash[:error] = 'Invalid player name. Name must not be blank.'
      redirect_to new_tictacto_player_path(@tictactoe)
    end
  end

  def edit
    @tictactoe = Tictactoe.find(params[:id])
  end

  def show
    @tictactoe = Tictactoe.find(params[:id])
  end

end
