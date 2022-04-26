require './spec/spec_helper'
require './lib/translate'
require './lib/reusable'

describe Translate do
  include Reusable
  let(:translate){Translate.new}

  before do
    allow(FileManager).to receive(:reading).and_return("hello")
  end

  before do
    allow(FileManager).to receive(:writing).and_return("hello")
  end

  it 'exists' do
    expect(translate).to be_an(Translate)
  end

  it 'has readable attributes' do
    expect(translate.dictionary).to eq({
      'a': ["O.","..",".."],
      'b': ["OO","..",".."],
      'c': ["O.",".O",".."],
      'd': ["O.",".O","O."],
      'e': ["O.","..","O."],
      'f': ["OO",".O",".."],
      'g': ["OO",".O","O."],
      'h': ["OO","..","O."],
      'i': [".O",".O",".."],
      'j': [".O",".O","O."],
      'k': ["O.","O.",".."],
      'l': ["OO","O.",".."],
      'm': ["O.","OO",".."],
      'n': ["O.","OO","O."],
      'o': ["O.","O.","O."],
      'p': ["OO","OO",".."],
      'q': ["OO","OO","O."],
      'r': ["OO","O.","O."],
      's': [".O","OO",".."],
      't': [".O","OO","O."],
      'u': ["O.","O.",".O"],
      'v': ["OO","O.",".O"],
      'w': [".O",".O","OO"],
      'x': ["O.","OO",".O"],
      'y': ["O.","OO","OO"],
      'z': ["O.","O.","OO"],
      " ": ["..","..",".."]
    })
  end

  it 'can translate english to braille' do
    expect(translate.translate_e_to_b).to eq( [["OO", "..", "O."], ["O.", "..", "O."], ["OO", "O.", ".."], ["OO", "O.", ".."], ["O.", "O.", "O."]])
  end

  it 'can turn translated into braille' do
    expect(translate.translated_to_braille).to eq("OOO.OOOOO.\n....O.O.O.\nO.O.....O.\n")
  end

  it 'can write' do
    expect(translate.writing).to eq("hello")
  end
end
