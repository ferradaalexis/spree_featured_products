require 'spec_helper'

describe Spree::HomeController, type: :controller do
  describe "GET featured_products" do
    it "assigns featured products to display" do
      spree_get :featured_products
      expect(assigns(:products)).not_to be_nil
      expect(assigns(:products)).to be_a(Spree::Product::ActiveRecord_Relation)
    end
  end
end
