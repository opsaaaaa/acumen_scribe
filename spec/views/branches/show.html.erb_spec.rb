require 'rails_helper'

RSpec.describe "branches/show", type: :view do
  before(:each) do
    @branch = assign(:branch, Branch.create!(
      name: "Name",
      parent: nil,
      project: nil,
      board: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
