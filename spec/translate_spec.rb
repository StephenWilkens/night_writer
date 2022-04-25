require './spec/spec_helper'
require './lib/translate'
require './lib/reusable'
describe Translate do
  include Reusable
  let(:translate){Translate.new}

  it 'exists' do
    expect(translate).to be_an(Translate)
  end

  it 'has readable attributes' do
    expect(translate.input).to eq(ARGV[0])
    expect(translate.output).to eq(ARGV[1])
    expect(translate.dictionary).to eq({
      'a': ["O.","..",".."],
      'b': ["OO","..",".."],
      'c': ["O.",".O",".."],
      'd': ["O.",".O","O."],
      'e': ["O.",".O",".."],
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
      " ": ["..","..",".."]})
    end

  it 'can translate input' do
    expect(translate.translate_input).to eq(translate.translate_e_to_b)
  end

  it 'can write the input to an output file in braille' do
    translate.output = './braille.txt' if translate.output.nil?
    expect(translate.write_input_to_output_file).to eq(nil)
  end
end
