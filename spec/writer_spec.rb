require './spec/spec_helper'
require './lib/writer'
require './lib/translate'
require './lib/reusable'

describe Writer do
  include Reusable

  let(:night_rider){Writer.new}
  let(:translate){Translate.new}

  before do
    allow(FileManager).to receive(:writing).and_return("OOO.OOOOO.\n....O.O.O.\nO.O.....O.")
  end

  before do
    allow(FileManager).to receive(:reading).and_return("OOO.OOOOO.\n....O.O.O.\nO.O.....O.")
  end

  before do
    allow_any_instance_of(Translate).to receive(:translate_e_to_b).and_return([["OO", "..", "O."],
 ["O.", "..", "O."],
 ["OO", "O.", ".."],
 ["OO", "O.", ".."],
 ["O.", "O.", "O."]])
  end

  it 'exists' do
    expect(night_rider).to be_an(Writer)
  end

  it "can translate text" do
    expect(night_rider.translated_text).to eq("OOO.OOOOO.\n....O.O.O.\nO.O.....O.")
  end

  it 'can translate text and print a message' do
    expect(night_rider.translate).to eq(nil)
  end
end
