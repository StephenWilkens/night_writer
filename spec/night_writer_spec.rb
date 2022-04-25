require './spec/spec_helper'
require './lib/night_writer'
require './lib/translate'
require './lib/reusable'

describe NightWriter do
  include Reusable
  let(:night_rider){NightWriter.new}
  let(:translate){Translate.new}

  xit 'exists' do
    expect(night_rider).to be_an(NightWriter)
  end

  xit "has readable attributes" do
    expect(night_rider.input).to eq(ARGV[0])
    expect(night_rider.output).to eq(ARGV[1])
  end

  xit "can translate" do
    expect(night_rider.translate).to eq(nil)
  end
end
