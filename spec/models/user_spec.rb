require 'rails_helper'

RSpec.describe User, type: :model do
  factory_can_create(:user)
  factory_can_create(:dumb_user)
end
