require "spec_helper"

RSpec.describe Spree::HomeController, :type => :routing do
  describe "routing" do
    routes { Spree::Core::Engine.routes }

    it "routes to #featured_products" do
      expect(:get => "/featured_products").to route_to(controller: "spree/home", action: 'featured_products')
    end
  end
end
