module TictactoesHelper
  def p_info(tictactoe)
    players = Array.new
    #return tictactoe_players.collect(&:name)[1]
    #return tictactoe_players
    #name = tictactoe_players.collect(&:name)[0]
    players[0] = tictactoe.players[0].name  + ", " + tictactoe.players[0].mark
    players[1] = tictactoe.players[1].name  + ", " + tictactoe.players[1].mark
    #size = tictactoe_players.count
    #mark = tictactoe_players.collect(&:mark)[0]

    return players
  end

  def p_moves(tictactoe)
    moves = Array.new
    p1_moves = Array.new
    p2_moves = Array.new

    tictactoe.squares.each do |n|
      p1_moves << n.num if n.value == tictactoe.players[0].mark
      p2_moves << n.num if n.value == tictactoe.players[1].mark
    end
    moves[0] = p1_moves.dup
    moves[1] = p2_moves.dup
    return moves
  end


  def turn(tictactoe_players, moves_avail)
    return tictactoe_players[0].name if moves_avail.length.odd? && tictactoe_players[0].first_to_act == "true"
    return tictactoe_players[1].name if moves_avail.length.odd? && tictactoe_players[1].first_to_act == "true"
    return tictactoe_players[0].name if moves_avail.length.even? && tictactoe_players[0].first_to_act == "false"
    return tictactoe_players[1].name if moves_avail.length.even? && tictactoe_players[1].first_to_act == "false"
  end
end
