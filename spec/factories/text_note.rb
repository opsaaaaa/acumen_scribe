FactoryBot.define do
  factory :text_note do
    body {"sample note"}
    order {0}
    size {'1x1'}
    color {'white'}
    board {create(:board)}
  end
  factory :valid_text_note, class: 'text_note' do
    body {"sample note"}
    order {0}
    size {'1x1'}
    color {'white'}
    board_id {create(:board).id}
  end
  factory :broken_text_note, class: 'text_note' do
    body {"sample note"}
  end
  factory :minimum_text_note, class: 'text_note' do
    body {"sample note"}
    board_id {create(:board).id}
  end
end
