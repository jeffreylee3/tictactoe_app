class Player < ActiveRecord::Base
  attr_accessible :cpu, :first_to_act, :mark, :name
  serialize :moves

  def move(move)
  	@moves << move
  end
end
