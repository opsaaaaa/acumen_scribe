
def refuses_signed_out_users_for factory
  describe "refuses signed out users for #{factory}" do
    it "GET /index" do
      create(factory)
      get text_notes_url
      expect(response).not_to be_successful
    end
  end
end

def accepts_signed_in_users_for factory
  describe "accepts signed in users for #{factory}" do

    before do
      sign_in user
    end
    
    it "GET /index" do
      create(factory)
      get text_notes_url
      expect(response).to be_successful
    end

  end
end