require_relative './reusable'


class Translate
  include Reusable
  attr_accessor :dictionary, :input, :output
  def initialize
    @input = ARGV[0]
    @output = ARGV[1]
    @dictionary = {
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
      " ": ["..","..",".."]}
  end

  def translate_input
    translate_e_to_b
  end

  def write_input_to_output_file
    translated = translate_input.transpose
    braille = translated.map { |row| row.join(' ')}.join("\n")
    writer = File.open(output, "w")
    writer.write(braille)
    writer.close
    # require "pry"; binding.pry
  end

end
translate = Translate.new
translate.input = './message.txt' if translate.input.nil?
translate.output = './braille.txt' if translate.output.nil?
