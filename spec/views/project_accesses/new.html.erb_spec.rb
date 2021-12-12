require 'rails_helper'

RSpec.describe "project_accesses/new", type: :view do
  before(:each) do
    assign(:project_access, ProjectAccess.new(
      user: nil,
      project: nil,
      access: 1
    ))
  end

  it "renders new project_access form" do
    render

    assert_select "form[action=?][method=?]", project_accesses_path, "post" do

      assert_select "input[name=?]", "project_access[user_id]"

      assert_select "input[name=?]", "project_access[project_id]"

      assert_select "input[name=?]", "project_access[access]"
    end
  end
end
