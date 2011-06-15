require "spec_helper"

describe NewspostsController do
  describe "routing" do

    it "routes to #index" do
      get("/newsposts").should route_to("newsposts#index")
    end

    it "routes to #new" do
      get("/newsposts/new").should route_to("newsposts#new")
    end

    it "routes to #show" do
      get("/newsposts/1").should route_to("newsposts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/newsposts/1/edit").should route_to("newsposts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/newsposts").should route_to("newsposts#create")
    end

    it "routes to #update" do
      put("/newsposts/1").should route_to("newsposts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/newsposts/1").should route_to("newsposts#destroy", :id => "1")
    end

  end
end
