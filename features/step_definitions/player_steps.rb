

Given(/^a new tic tac toe game$/) do
  @tictactoe = Tictactoe.new
end

When(/^I create player$/) do
  visit new_tictacto_player_path(:id => 1)
  fill_in "name", with: "Jeff"
  click_button "Create Player"
end

Then(/^I should see "select a square"$/) do
  page.should have_content("select a square")
end