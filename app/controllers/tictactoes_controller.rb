class TictactoesController < ApplicationController

  def show
    @tictactoe = Tictactoe.find(params[:id])
  end

  #need to change, new should should only initialize object
  def new  	
  	@tictactoe = Tictactoe.new
    @tictactoe.squares = Array.new(9)    
    @tictactoe.save
    redirect_to tictactoes_path
  end

  def index
    @tictactoes = Tictactoe.all
  end

  #create should take parameters from new and create by saving 
  def create
    #@tictactoe = Tictactoe.new
    #@tictactoe.squares = Array.new(params[:tictactoe].to_i)    
    #@tictactoe.save
    #redirect_to tictactoes_path
  end

  def update
  	#update board with move and direct to show
    #@tictactoe = Tictactoe.new(params[:tictactoe])
    @tictactoe = Tictactoe.find(params[:id])
    @tictactoe.update_attributes(params[:tictactoe]) #includes db save (@tictactoe.save)

    #@tictactoe = Tictactoe.find(params[:id])
    #@tictactoe.squares = params[:squares]

    #@tictactoe.save
    redirect_to tictactoes_path
  end

  def edit
    @tictactoe = Tictactoe.find(params[:id])
  end
end
