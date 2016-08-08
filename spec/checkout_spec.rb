require 'spec_helper'
require "./checkout"

RSpec.describe 'Checkout' do
  let(:checkout) { Checkout.new("three_for_two") }

  it { expect(checkout).to be_kind_of(Checkout) }
  it { expect(checkout).to respond_to(:rule) }
  it { expect(checkout).to respond_to(:total)}

  context "when initialized without arguments" do 
    it { expect { Checkout.new }.to raise_error(ArgumentError) }
  end
end