require 'rails_helper'

RSpec.describe "branches/edit", type: :view do
  before(:each) do
    @branch = assign(:branch, Branch.create!(
      name: "MyString",
      parent: nil,
      project: nil,
      board: nil
    ))
  end

  it "renders the edit branch form" do
    render

    assert_select "form[action=?][method=?]", branch_path(@branch), "post" do

      assert_select "input[name=?]", "branch[name]"

      assert_select "input[name=?]", "branch[parent_id]"

      assert_select "input[name=?]", "branch[project_id]"

      assert_select "input[name=?]", "branch[board_id]"
    end
  end
end
