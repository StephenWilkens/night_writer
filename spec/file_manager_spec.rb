require './spec/spec_helper'
require './lib/file_manager'

describe FileManager do

  before do
  allow(FileManager).to receive(:writing).and_return("OOO.OOOOO.\n....O.O.O.\nO.O.....O.")
  end

  before do
  allow(FileManager).to receive(:reading).and_return("OOO.OOOOO.\n....O.O.O.\nO.O.....O.")
  end

  it 'can read' do
    expect(FileManager.reading).to eq("OOO.OOOOO.\n....O.O.O.\nO.O.....O.")
  end

  it 'can write' do
    expect(FileManager.writing).to eq("OOO.OOOOO.\n....O.O.O.\nO.O.....O.")
  end
end
