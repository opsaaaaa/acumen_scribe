FactoryBot.define do
  factory :project_access do
    user {create(:user)}
    project {create(:project)}
    access {1}
  end
end
