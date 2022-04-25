require './lib/night_reader'

describe NightReader do
let(:night_reader){NightReader.new}

  it 'exists' do
    expect(night_reader).to be_an(NightReader)
  end
end
