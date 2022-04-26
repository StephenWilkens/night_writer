require './spec/spec_helper'
require './lib/reader'


describe Reader do
let(:night_reader){Reader.new}

  before do
    allow(FileManager).to receive(:writing).and_return("a")
  end

  it 'exists' do
    expect(night_reader).to be_an(Reader)
  end

  it 'can count characters' do
    expect(night_reader.total_characters).to eq(0)
  end

  it 'can print a confirmation message' do
    expect(night_reader.message).to be(puts "Created #{ARGV[1]} containing #{night_reader.total_characters} characters")
  end

  it 'can translate a letter' do
    expect(night_reader.writing_to_e).to eq("a")
  end

  it 'has a readable dictionary' do
    expect(night_reader.dictionary).to eq({
    ["O.","..",".."] => "a",
    ["OO","..",".."] => "b",
    ["O.",".O",".."] => "c",
    ["O.",".O","O."] => "d",
    ["O.","..","O."] => "e",
    ["OO",".O",".."] => "f",
    ["OO",".O","O."] => "g",
    ["OO","..","O."] => "h",
    [".O",".O",".."] => "i",
    [".O",".O","O."] => "j",
    ["O.","O.",".."] => "k",
    ["OO","O.",".."] => "l",
    ["O.","OO",".."] => "m",
    ["O.","OO","O."] => "n",
    ["O.","O.","O."] => "o",
    ["OO","OO",".."] => "p",
    ["OO","OO","O."] => "q",
    ["OO","O.","O."] => "r",
    [".O","OO",".."] => "s",
    [".O","OO","O."] => "t",
    ["O.","O.",".O"] => "u",
    ["OO","O.",".O"] => "v",
    [".O",".O","OO"] => "w",
    ["O.","OO",".O"] => "x",
    ["O.","OO","OO"] => "y",
    ["O.","O.","OO"] => "z",
    ["..","..",".."] => ""})
  end
end
