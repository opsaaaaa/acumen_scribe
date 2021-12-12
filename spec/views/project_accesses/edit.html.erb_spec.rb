require 'rails_helper'

RSpec.describe "project_accesses/edit", type: :view do
  before(:each) do
    @project_access = assign(:project_access, ProjectAccess.create!(
      user: nil,
      project: nil,
      access: 1
    ))
  end

  it "renders the edit project_access form" do
    render

    assert_select "form[action=?][method=?]", project_access_path(@project_access), "post" do

      assert_select "input[name=?]", "project_access[user_id]"

      assert_select "input[name=?]", "project_access[project_id]"

      assert_select "input[name=?]", "project_access[access]"
    end
  end
end
