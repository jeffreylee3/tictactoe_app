class Player < ActiveRecord::Base
  attr_accessible :cpu, :first_to_act, :mark, :name, :moves, :tictactoe_id, :win, :lose, :draw
  serialize :moves
  belongs_to :tictactoe
end
