require 'spec_helper'

describe "Tictactoe pages" do
  subject { page }  

  describe "Root page" do
    before { visit root_path }

    it { should have_content('Welcome') }

    let(:submit) { "Start Game!" }

    describe "when clicking on start game" do
      it "should create a new game board" do
        expect { click_button submit }.to change(Tictactoe, :count).by(1)
      end
    end
  end  

  describe "Edit page" do
    let(:tictactoe) { FactoryGirl.create(:tictactoe) }
    #let(:player) { FactoryGirl.create(:player) }
    #let(:player2) { FactoryGirl.create(:player) }
    before do 
      #9.times { tictactoe.squares.build }

      player = tictactoe.players.build(:name => "Test", :first_to_act => "true")
      visit edit_tictacto_path(tictactoe)
    end 

    it { should have_content('Tic Tac Toe') }
  end  

end
