require 'rails_helper'

RSpec.describe ProjectAccess, type: :model do
  factory_can_create(:project_access)
end
