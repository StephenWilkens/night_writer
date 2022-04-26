require './spec/spec_helper'
require './lib/writer'
require './lib/translate'
require './lib/reusable'
describe Reusable do
  let(:night_rider){Writer.new}
  let(:translate){Translate.new}

  before do
    allow(FileManager).to receive(:reading).and_return("hello")
  end

  it "can count characters" do
    expect(night_rider.total_characters).to eq(0)
  end

  it 'can translate english to braille' do
    expect(translate.translated_to_braille).to eq("OOO.OOOOO.\n....O.O.O.\nO.O.....O.")
  end
end
