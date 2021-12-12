require 'rails_helper'

RSpec.describe "project_accesses/index", type: :view do
  before(:each) do
    assign(:project_accesses, [
      ProjectAccess.create!(
        user: nil,
        project: nil,
        access: 2
      ),
      ProjectAccess.create!(
        user: nil,
        project: nil,
        access: 2
      )
    ])
  end

  it "renders a list of project_accesses" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
