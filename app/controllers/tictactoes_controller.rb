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
    # no attributes for tictactoe DB, need to update differently

    #@tictactoe.squares.update_attributes(params[:square]) #includes db save (@tictactoe.save)
    @tictactoe.update_attributes(params[:tictactoe]) #includes db save (@tictactoe.save)
    redirect_to edit_tictacto_path(@tictactoe) #have this part of an if statement, if winner,draw go here, else back to edit page, make constant val to curr board
  # render :edit
  end

  def edit
    @tictactoe = Tictactoe.find(params[:id])
  end

  private
    def get_players
      @players = []
      #@players[0] = @tictactoe.players.collect() 
    end

end
