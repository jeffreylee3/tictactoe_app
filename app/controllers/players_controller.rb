class PlayersController < ApplicationController
  #before_filter :get_tictactoe  

  def new
    @tictactoe = Tictactoe.find(params[:tictacto_id]) 
    #@player = @tictactoe.players.build
    2.times { @tictactoe.players.build }
  end

  #private
  #def get_tictactoe
   # @tictactoe = Tictactoe.find(params[:tictacto_id])
  #end
end

