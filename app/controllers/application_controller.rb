class ApplicationController < ActionController::Base
  protect_from_forgery

  # what happens if: Game1 created, Game2 created (two seperate sessions), 
  # then Game1 adds players, then Game2 adds players.  DOESN'T WORK.
  # Game1 players are added to Game2 and Game2 player are added to Game2
  # Look into better solution for identifying curr board value
  def curr_board
  	Tictactoe.last
  end

end
