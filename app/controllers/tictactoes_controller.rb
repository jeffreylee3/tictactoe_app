class TictactoesController < ApplicationController
  include TictactoesHelper

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
    #@tictactoe.save

    # create tic tac toe squares, initialize index values for each square, 
    # corresponds to game board location
    9.times { @tictactoe.squares.build }
    @tictactoe.squares.each_with_index { |square, index| square.num = index }
    @tictactoe.save
    
    redirect_to new_tictacto_player_path(@tictactoe)
  end

  def update
    @tictactoe = Tictactoe.find(params[:id])
    @tictactoe.update_attributes(params[:tictactoe]) #includes db save
    
    # if @tictactoe.result == Player 1 || Player 2 || Draw
    # redirect to show page
    # else
    # redirect to edit page

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
      redirect_to edit_tictacto_path(@tictactoe) #have this part of an if statement, if winner,draw go here, else back to edit page, make constant val to curr board    
    end
    # render :edit
  end

  def edit
    @tictactoe = Tictactoe.find(params[:id])
  end


end
