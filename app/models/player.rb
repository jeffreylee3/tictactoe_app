class Player < ActiveRecord::Base
  attr_accessible :cpu, :first_to_act, :mark, :name, :tictactoe_id, :win, :lose, :draw
  belongs_to :tictactoe
end
