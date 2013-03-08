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
    @tictactoe.save
    redirect_to new_tictacto_square_path(@tictactoe)
  end

  def update
    @tictactoe = Tictactoe.find(params[:id])
    @tictactoe.update_attributes(params[:tictactoe]) #includes db save

    if @tictactoe.players.count == 0
      # set square index values here (0-8 for board square representation).
      @tictactoe.squares.each_with_index { |square, index| square.num = index }
      @tictactoe.save

      redirect_to new_tictacto_player_path(@tictactoe)
    else
      redirect_to edit_tictacto_path(@tictactoe) #have this part of an if statement, if winner,draw go here, else back to edit page, make constant val to curr board
    end
    # render :edit
  end

  def edit
    @tictactoe = Tictactoe.find(params[:id])
  end


end
