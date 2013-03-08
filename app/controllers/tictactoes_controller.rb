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
    
    redirect_to edit_tictacto_path(@tictactoe) #have this part of an if statement, if winner,draw go here, else back to edit page, make constant val to curr board    
    # render :edit
  end

  def edit
    @tictactoe = Tictactoe.find(params[:id])
  end


end
