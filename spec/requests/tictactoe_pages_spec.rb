require 'spec_helper'

describe "Tictactoe pages" do
  
  describe "Index page" do

    it "should have the content 'Welcome'" do
      visit root_path
      page.should have_content('Welcome')
    end

  end

  describe "New page" do

    it "should have the content 'Game Setup'" do
      visit new_game_path
      page.should have_content('Game Setup')
    end

    #describe "with valid information" do
    #	before do
     #   fill_in ""

  end  


  describe "Show page" do

    it "should have the content 'Tic Tac Toe'" do
      visit game_path
      page.should have_content('Tic Tac Toe')
    end

  end  

end
