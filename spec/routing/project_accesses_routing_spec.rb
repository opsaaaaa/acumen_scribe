require "rails_helper"

RSpec.describe ProjectAccessesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/project_accesses").to route_to("project_accesses#index")
    end

    it "routes to #new" do
      expect(get: "/project_accesses/new").to route_to("project_accesses#new")
    end

    it "routes to #show" do
      expect(get: "/project_accesses/1").to route_to("project_accesses#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/project_accesses/1/edit").to route_to("project_accesses#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/project_accesses").to route_to("project_accesses#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/project_accesses/1").to route_to("project_accesses#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/project_accesses/1").to route_to("project_accesses#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/project_accesses/1").to route_to("project_accesses#destroy", id: "1")
    end
  end
end
