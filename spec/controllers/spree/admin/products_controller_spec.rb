require 'spec_helper'

describe Spree::Admin::ProductsController, :type => :controller do
  stub_authorization!

  describe "GET index" do
    before(:each) do
      FactoryGirl.create(:base_product)
    end

    context "filtering by featured products" do
      context "when no products are marked as featured" do
        it "returns an empty collection" do
          spree_get :index, :q => { :featured_true => "t" }
          expect(assigns[:collection]).to be_empty
        end
      end

      context "when at least one product is marked as featured" do
        it "returns a collection with featured products" do
          product = FactoryGirl.create(:base_product, :featured)
          spree_get :index, :q => { :featured_true => "t" }
          expect(assigns[:collection]).not_to be_empty
          expect(assigns[:collection].size).to eq(1)
          expect(assigns[:collection]).to include(product)
        end
      end
    end
  end
end
