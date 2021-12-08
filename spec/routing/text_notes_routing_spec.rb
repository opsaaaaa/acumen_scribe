require "rails_helper"

RSpec.describe TextNotesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/text_notes").to route_to("text_notes#index")
    end

    it "routes to #new" do
      expect(get: "/text_notes/new").to route_to("text_notes#new")
    end

    it "routes to #show" do
      expect(get: "/text_notes/1").to route_to("text_notes#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/text_notes/1/edit").to route_to("text_notes#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/text_notes").to route_to("text_notes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/text_notes/1").to route_to("text_notes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/text_notes/1").to route_to("text_notes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/text_notes/1").to route_to("text_notes#destroy", id: "1")
    end
  end
end
