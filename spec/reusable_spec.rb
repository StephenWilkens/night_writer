require './spec/spec_helper'
require './lib/writer'
require './lib/translate'
require './lib/reusable'

describe Reusable do
  let(:night_rider){Writer.new}
  let(:translate){Translate.new}

  it "can count characters" do
    expect(night_rider.total_characters).to eq(0)
  end

  it 'can print a message' do
    expect(night_rider.message).to eq(nil)
  end
end
