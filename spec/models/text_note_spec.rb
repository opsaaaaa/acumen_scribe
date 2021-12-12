require 'rails_helper'

RSpec.describe TextNote, type: :model do
  factory_can_create(:text_note)
end
