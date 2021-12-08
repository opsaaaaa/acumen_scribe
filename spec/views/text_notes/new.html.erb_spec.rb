require 'rails_helper'

RSpec.describe "text_notes/new", type: :view do
  before(:each) do
    assign(:text_note, TextNote.new(
      body: "MyText",
      order: "",
      size: "MyString",
      color: "MyString",
      board: nil
    ))
  end

  it "renders new text_note form" do
    render

    assert_select "form[action=?][method=?]", text_notes_path, "post" do

      assert_select "textarea[name=?]", "text_note[body]"

      assert_select "input[name=?]", "text_note[order]"

      assert_select "input[name=?]", "text_note[size]"

      assert_select "input[name=?]", "text_note[color]"

      assert_select "input[name=?]", "text_note[board_id]"
    end
  end
end
