require 'rails_helper'

RSpec.describe HomeController, :type => :controller do

  describe "GET main" do
    it "renders the :main template" do
      expect(get: root_url(subdomain: nil)).to route_to(controller: "home", action: "main")
    end
  end
end