require 'spec_helper'
require "./product"

RSpec.describe 'Product' do
  let(:product) { Product.new("ipd", "MacBook", 1500) }

  it { expect(product).to be_kind_of(Product) }
  it { expect(product).to respond_to(:name) }
  it { expect(product).to respond_to(:sku)}
  it { expect(product).to respond_to(:price) }

  context "when initialized without arguments" do 
    it { expect { Product.new }.to raise_error(ArgumentError) }
  end
end