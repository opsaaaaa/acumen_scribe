require 'rails_helper'

RSpec.describe "branches/index", type: :view do
  before(:each) do
    assign(:branches, [
      Branch.create!(
        name: "Name",
        parent: nil,
        project: nil,
        board: nil
      ),
      Branch.create!(
        name: "Name",
        parent: nil,
        project: nil,
        board: nil
      )
    ])
  end

  it "renders a list of branches" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
