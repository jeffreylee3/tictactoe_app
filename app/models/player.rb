class Player < ActiveRecord::Base
  attr_accessible :cpu, :first_to_act, :mark, :name, :moves, :tictactoe_id
  serialize :moves
  belongs_to :tictactoe
end
