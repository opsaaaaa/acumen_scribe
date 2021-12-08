require 'rails_helper'

RSpec.describe "text_notes/index", type: :view do
  before(:each) do
    assign(:text_notes, [
      TextNote.create!(
        body: "MyText",
        order: "",
        size: "Size",
        color: "Color",
        board: nil
      ),
      TextNote.create!(
        body: "MyText",
        order: "",
        size: "Size",
        color: "Color",
        board: nil
      )
    ])
  end

  it "renders a list of text_notes" do
    render
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: "Size".to_s, count: 2
    assert_select "tr>td", text: "Color".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
