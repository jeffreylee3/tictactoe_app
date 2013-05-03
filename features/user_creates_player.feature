Feature: User creates player

  As a user
  I want to create a player
  So that I can play against the computer
  
  Scenario: create player
  Given a new tic tac toe game
  When I create player
  Then I should see "select a square."

