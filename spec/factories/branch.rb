FactoryBot.define do
  factory :branch do
    name {"Board Title"}
    project {create(:project)}
    

  end
end
