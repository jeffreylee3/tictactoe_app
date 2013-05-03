
Given(/^I am not yet playing$/) do
end

When(/^I start a new game$/) do
  visit root_path
  click_button "Start Game!"
end

Then(/^I should see "Player Setup"$/) do
  page.should have_content("Player Setup")
end

Then(/^a new Tictactoe object should exist$/) do
  pending
end