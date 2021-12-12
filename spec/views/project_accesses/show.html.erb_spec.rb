require 'rails_helper'

RSpec.describe "project_accesses/show", type: :view do
  before(:each) do
    @project_access = assign(:project_access, ProjectAccess.create!(
      user: nil,
      project: nil,
      access: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
