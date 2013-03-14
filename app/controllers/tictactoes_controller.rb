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
    @tictactoe.update_attributes(params[:tictactoe]) #includes db save

    if @tictactoe.winner?(p1_moves(@tictactoe))
      @tictactoe.players[0].win += 1
      @tictactoe.players[1].lose += 1
      @tictactoe.save
      redirect_to tictacto_path(@tictactoe)
    elsif @tictactoe.winner?(p2_moves(@tictactoe))
      @tictactoe.players[0].lose += 1
      @tictactoe.players[1].win += 1
      @tictactoe.save
      redirect_to tictacto_path(@tictactoe)
    elsif @tictactoe.draw?(p1_moves(@tictactoe),p2_moves(@tictactoe))
      @tictactoe.players[0].draw += 1
      @tictactoe.players[1].draw += 1
      @tictactoe.save      
      redirect_to tictacto_path(@tictactoe)
    else
      redirect_to edit_tictacto_path(@tictactoe)
    end
    #render :edit
  end

  def edit
    @tictactoe = Tictactoe.find(params[:id])
  end

  def show
    @tictactoe = Tictactoe.find(params[:id])
  end

end
