require_relative './reusable'
require_relative './file_manager'

class Translate
  include Reusable
  attr_accessor :dictionary
  def initialize
    @dictionary = {
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
      " ": ["..","..",".."]}
  end

  def translate_e_to_b
    translated = []
    incoming_text = FileManager.reading
    incoming_text.each_char do |c|
      @dictionary.each do |k, v|
        if c == k.to_s
          translated << v
        end
      end
    end
    translated
  end

  def translated_to_braille
    translated = translate_e_to_b.transpose
    translated.map { |row| row.join('')}.join("\n")
  end

  def writing
    FileManager.writing(translated_to_braille)
  end

end
