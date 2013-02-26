class Tictactoe < ActiveRecord::Base
  serialize :squares
  # attr_accessible :title, :body
end
