class Player < ActiveRecord::Base
  attr_accessible :cpu, :first_to_act, :mark, :name, :moves
  serialize :moves
  belongs_to :tictactoe

  def move(move)
  	@moves << move
  end
end
