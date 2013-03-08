module TictactoesHelper

  def p1_moves(tictactoe)
    p1_moves = Array.new
    tictactoe.squares.each { |n| p1_moves << n.num if n.value == "X" }  
    return p1_moves    
  end

  def p2_moves(tictactoe)
    p2_moves = Array.new
    tictactoe.squares.each { |n| p2_moves << n.num if n.value == "O" }  
    return p2_moves    
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

  def p_winner(tictactoe)
    return "Congratulations, Player 1! You Win!!" if tictactoe.winner?(p1_moves(tictactoe))
    return "Congratulations, Player 2! You Win!!" if tictactoe.winner?(p2_moves(tictactoe))
    return "Game ends in a draw." if tictactoe.draw?(p1_moves(tictactoe),p2_moves(tictactoe))
  end


  # delete
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
