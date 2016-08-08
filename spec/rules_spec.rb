require 'spec_helper'
require "./rules"

RSpec.describe 'Rules' do
  it "result?" do
    allow(Rules).to receive(:pricing).and_return({something: 1234.00})
  end
end