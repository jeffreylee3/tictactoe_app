FactoryGirl.define do
  factory :tictactoe do
  end

  factory :player do
    name          "Test User"
    first_to_act  "true"
    win           0
    lose          0
    draw          0
  end

end


