require "rails_helper"

RSpec.describe DailiesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/dailies").to route_to("dailies#index")
    end

    it "routes to #show" do
      expect(get: "/dailies/1").to route_to("dailies#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/dailies").to route_to("dailies#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/dailies/1").to route_to("dailies#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/dailies/1").to route_to("dailies#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/dailies/1").to route_to("dailies#destroy", id: "1")
    end
  end
end
