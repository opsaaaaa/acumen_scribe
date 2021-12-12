FactoryBot.define do
  factory :text_note do
    body {"sample note"}
    order {0}
    size {'1x1'}
    color {'white'}
    board {create(:board)}
  end
end
