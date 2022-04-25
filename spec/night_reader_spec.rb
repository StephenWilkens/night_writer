require './spec/spec_helper'
require './lib/night_reader'


describe NightReader do
let(:night_reader){NightReader.new}

  it 'exists' do
    expect(night_reader).to be_an(NightReader)
  end

  it "has readable attributes" do
    expect(night_reader.input).to eq(ARGV[0])
    expect(night_reader.output).to eq(ARGV[1])
  end
  
  it 'can count characters' do
    expect(night_reader.total_characters).to eq(0)
  end

  it 'can print a confirmation message' do
    expect(night_reader.message).to be(puts "Created #{ARGV[1]} containing #{night_reader.total_characters} characters")
  end
end
