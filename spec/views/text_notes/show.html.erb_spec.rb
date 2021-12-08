require 'rails_helper'

RSpec.describe "text_notes/show", type: :view do
  before(:each) do
    @text_note = assign(:text_note, TextNote.create!(
      body: "MyText",
      order: "",
      size: "Size",
      color: "Color",
      board: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Size/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(//)
  end
end
