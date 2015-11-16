require 'spec_helper'

describe Spree::Product, type: :model do
  ###############
  # attributes #
  ##############
  it { expect(subject).to respond_to :featured }

  ###############
  # validations #
  ###############
  it 'has a valid factory' do
    expect(FactoryGirl.build(:base_product, :featured)).to be_valid
  end
end
