Feature: User starts game

  As a user
  I want to start a game
  So that I can play Tic Tac Toe
  
  Scenario: start game
  Given I am not yet playing
  When I start a new game
  Then I should see "Player Setup"
  And a new Tictactoe object should exist
