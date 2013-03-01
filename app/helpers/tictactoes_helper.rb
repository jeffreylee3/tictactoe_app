module TictactoesHelper
	def players_info(tictactoe_players)
    #return tictactoe_players.collect(&:name)[1]
    #return tictactoe_players
    p1_name = tictactoe_players.collect(&:name)[0]
    p1_mark = tictactoe_players.collect(&:mark)[0]
    p2_name = tictactoe_players.collect(&:name)[1]
    p2_mark = tictactoe_players.collect(&:mark)[1]
    return "P1 Name: " + p1_name.to_s + " " + "P1 Mark: " + p1_mark.to_s + ", P2 Name: " + p2_name.to_s + " " + "P2 Mark: " + p2_mark.to_s
  end
end
