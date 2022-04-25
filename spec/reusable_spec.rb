require './spec/spec_helper'
require './lib/night_writer'
require './lib/translate'
require './lib/reusable'
describe Reusable do
  let(:night_rider){NightWriter.new}
  let(:translate){Translate.new}

  it "can count characters" do
    expect(night_rider.total_characters).to eq(nil)
  end

  it 'can translate english to braille' do
    expect()
  end
end
