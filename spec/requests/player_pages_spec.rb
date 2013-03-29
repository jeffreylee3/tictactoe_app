require 'spec_helper'

describe "PlayerPages" do

  subject { page }  

  describe "New player page" do
    let(:tictactoe) { FactoryGirl.create(:tictactoe) }
    before { visit new_tictacto_player_path(tictactoe) }

    it { should have_content('Player Setup') }
  end

end
