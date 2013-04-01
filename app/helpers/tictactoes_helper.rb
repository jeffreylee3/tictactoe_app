module TictactoesHelper

  #
  # returns player 1 list of moves
  #
  def p1_moves(tictactoe)
    p1_moves = Array.new
    tictactoe.squares.each { |n| p1_moves << n.num if n.value == "X" }  
    return p1_moves    
  end


  #
  # returns player 2 list of moves
  #
  def p2_moves(tictactoe)
    p2_moves = Array.new
    tictactoe.squares.each { |n| p2_moves << n.num if n.value == "O" }  
    return p2_moves    
  end


  #
  # determines whose move it is
  #
  def turn(tictactoe)
    moves_avail = @tictactoe.open_squares(p1_moves(@tictactoe),p2_moves(@tictactoe))

    return "Player 1" if moves_avail.length.odd? && tictactoe.players[0].first_to_act == "true"
    return "Player 2" if moves_avail.length.even? && tictactoe.players[0].first_to_act == "true"
    return "Player 2" if moves_avail.length.odd? && tictactoe.players[0].first_to_act == "false"
    return "Player 1" if moves_avail.length.even? && tictactoe.players[0].first_to_act == "false"
  end


  #
  # matches image name with game board value and returns that image name 
  # for display purposes
  #
  def return_image(tictactoe, num)
    return "blank.jpg" if tictactoe.squares[num].value == "" || tictactoe.squares[num].value == nil
    return "x.jpg" if tictactoe.squares[num].value == "X"
    return "o.jpg" if tictactoe.squares[num].value == "O"
  end


  #
  # called on show page to display results of game
  #
  def p_winner(tictactoe)
    return "Player 1" if tictactoe.winner?(p1_moves(tictactoe))
    return "Player 2" if tictactoe.winner?(p2_moves(tictactoe))
    return "Draw" if tictactoe.draw?(p1_moves(tictactoe),p2_moves(tictactoe))
  end


  #
  # generates computer move value.  creates a minimax object and calls generate_tree
  # on that object.  File for class definition is located at /lib/minimax.rb
  #
  def computer_move(tictactoe)
    moves = [p1_moves(tictactoe),p2_moves(tictactoe)]
    avail_moves = tictactoe.open_squares(p1_moves(tictactoe),p2_moves(tictactoe))
    
    node = Minimax.new moves, avail_moves
    node.generate_tree(tictactoe)
    return node.next_move.pop
  end


  #
  # sets game stats for players.  Called in tictactoes controller update.
  #
  def set_win_lose_draw(tictactoe, result)
    if result == "win"
      tictactoe.players[0].win += 1
      tictactoe.players[1].lose += 1
    elsif result == "lose"
      tictactoe.players[0].lose += 1
      tictactoe.players[1].win += 1
    else
      tictactoe.players[0].draw += 1
      tictactoe.players[1].draw += 1
    end
  end


  #
  # sets first_to_act values.  Called in tictactoes controller update.
  #
  def set_first_to_act(tictactoe)
    if tictactoe.players[0].first_to_act == "true"
      tictactoe.players[0].first_to_act = "false"
    else
      tictactoe.players[0].first_to_act = "true"
    end
  end
end
