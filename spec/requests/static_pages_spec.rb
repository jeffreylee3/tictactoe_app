require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Tic Tac Toe Program'" do
      visit '/static_pages/home'
      page.should have_content('Tic Tac Toe Program')
    end
  end
end
