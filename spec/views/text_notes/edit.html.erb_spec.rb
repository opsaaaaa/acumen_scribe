require 'rails_helper'

RSpec.describe "text_notes/edit", type: :view do
  before(:each) do
    @text_note = assign(:text_note, TextNote.create!(
      body: "MyText",
      order: "",
      size: "MyString",
      color: "MyString",
      board: nil
    ))
  end

  it "renders the edit text_note form" do
    render

    assert_select "form[action=?][method=?]", text_note_path(@text_note), "post" do

      assert_select "textarea[name=?]", "text_note[body]"

      assert_select "input[name=?]", "text_note[order]"

      assert_select "input[name=?]", "text_note[size]"

      assert_select "input[name=?]", "text_note[color]"

      assert_select "input[name=?]", "text_note[board_id]"
    end
  end
end
