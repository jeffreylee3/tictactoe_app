require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Tic Tac Toe Program'" do
      visit root_path
      page.should have_content('Tic Tac Toe Program')
    end
  end
end
