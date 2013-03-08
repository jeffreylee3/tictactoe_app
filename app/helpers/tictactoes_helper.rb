module TictactoesHelper

  def p_moves(tictactoe)
    moves = Array.new
    p1_moves = Array.new
    p2_moves = Array.new

    tictactoe.squares.each do |n|
      #p1_moves << n.num if n.value == tictactoe.players[0].mark
      #p2_moves << n.num if n.value == tictactoe.players[1].mark
      p1_moves << n.num if n.value == "X"
      p2_moves << n.num if n.value == "O"
    end
    moves[0] = p1_moves.dup
    moves[1] = p2_moves.dup
    return moves
  end


  def turn(tictactoe_players, moves_avail)
    return "Player 1" if moves_avail.length.odd?
    return "Player 2" if moves_avail.length.even?
  
    #return "Player 1" if moves_avail.length.odd? && tictactoe_players[0].first_to_act == "true"
    #return "Player 2" if moves_avail.length.odd? && tictactoe_players[1].first_to_act == "true"
    #return "Player 1" if moves_avail.length.even? && tictactoe_players[0].first_to_act == "false"
    #return "Player 2" if moves_avail.length.even? && tictactoe_players[1].first_to_act == "false"
  end

  def return_image(tictactoe, num)
    return "blank.jpg" if @tictactoe.squares[num].value == "" || @tictactoe.squares[num].value == nil
    return "x.jpg" if @tictactoe.squares[num].value == "X"
    return "o.jpg" if @tictactoe.squares[num].value == "O"
  end

  def test(tictactoe, num)
    tictactoe.squares[num].value = "X"
  end

  #delete, used for test table
  def return_image2(square)
    return "blank.jpg" if square == 0 || square == nil
    return "x.jpg" if square == 1
    return "o.jpg" if square == 2
  end


end
