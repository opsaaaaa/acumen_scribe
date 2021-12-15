 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/text_notes", type: :request do
  

  let(:user) {create(:user)}
  
  # TextNote. As you add validations to TextNote, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {
      "email": "bob@example.com"
    }
  }

  let(:invalid_attributes) {
    {
      "email": "bob@example.com"
    }
  }
  setup do

  end

  describe "authentication" do
    describe "refuses signed out users" do
      
      it "GET /index" do
        create(:text_note)
        get text_notes_url
        expect(response).not_to be_successful
      end
    
    end

    describe "accepts signed in users" do

      before do
        sign_in user
      end
      
      it "GET /index" do
        create(:text_note)
        get text_notes_url
        expect(response).to be_successful
      end

    end
  end

  # describe "GET /index" do
  #   it "renders a successful response" do
  #     TextNote.create! valid_attributes
  #     get text_notes_url
  #     expect(response).to be_successful
  #   end
  # end

  # describe "GET /show" do
  #   it "renders a successful response" do
  #     text_note = TextNote.create! valid_attributes
  #     get text_note_url(text_note)
  #     expect(response).to be_successful
  #   end
  # end

  # describe "GET /new" do
  #   it "renders a successful response" do
  #     get new_text_note_url
  #     expect(response).to be_successful
  #   end
  # end

  # describe "GET /edit" do
  #   it "render a successful response" do
  #     text_note = TextNote.create! valid_attributes
  #     get edit_text_note_url(text_note)
  #     expect(response).to be_successful
  #   end
  # end

  # describe "POST /create" do
  #   context "with valid parameters" do
  #     it "creates a new TextNote" do
  #       expect {
  #         post text_notes_url, params: { text_note: valid_attributes }
  #       }.to change(TextNote, :count).by(1)
  #     end

  #     it "redirects to the created text_note" do
  #       post text_notes_url, params: { text_note: valid_attributes }
  #       expect(response).to redirect_to(text_note_url(TextNote.last))
  #     end
  #   end

  #   context "with invalid parameters" do
  #     it "does not create a new TextNote" do
  #       expect {
  #         post text_notes_url, params: { text_note: invalid_attributes }
  #       }.to change(TextNote, :count).by(0)
  #     end

  #     it "renders a successful response (i.e. to display the 'new' template)" do
  #       post text_notes_url, params: { text_note: invalid_attributes }
  #       expect(response).to be_successful
  #     end
  #   end
  # end

  # describe "PATCH /update" do
  #   context "with valid parameters" do
  #     let(:new_attributes) {
  #       skip("Add a hash of attributes valid for your model")
  #     }

  #     it "updates the requested text_note" do
  #       text_note = TextNote.create! valid_attributes
  #       patch text_note_url(text_note), params: { text_note: new_attributes }
  #       text_note.reload
  #       skip("Add assertions for updated state")
  #     end

  #     it "redirects to the text_note" do
  #       text_note = TextNote.create! valid_attributes
  #       patch text_note_url(text_note), params: { text_note: new_attributes }
  #       text_note.reload
  #       expect(response).to redirect_to(text_note_url(text_note))
  #     end
  #   end

  #   context "with invalid parameters" do
  #     it "renders a successful response (i.e. to display the 'edit' template)" do
  #       text_note = TextNote.create! valid_attributes
  #       patch text_note_url(text_note), params: { text_note: invalid_attributes }
  #       expect(response).to be_successful
  #     end
  #   end
  # end

  # describe "DELETE /destroy" do
  #   it "destroys the requested text_note" do
  #     text_note = TextNote.create! valid_attributes
  #     expect {
  #       delete text_note_url(text_note)
  #     }.to change(TextNote, :count).by(-1)
  #   end

  #   it "redirects to the text_notes list" do
  #     text_note = TextNote.create! valid_attributes
  #     delete text_note_url(text_note)
  #     expect(response).to redirect_to(text_notes_url)
  #   end
  # end
end
