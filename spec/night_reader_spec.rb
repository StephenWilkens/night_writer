require './lib/night_reader'

describe NightReader do
let(:night_reader){NightReader.new}

  it 'exists' do
    expect(night_reader).to be_an(NightReader)
  end

  it 'can print a confirmation message' do
    expect(night_reader.message).to be(puts "Created #{ARGV[1]} containing #{night_reader.total_characters} characters")
  end
end
