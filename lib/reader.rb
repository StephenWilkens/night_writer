require_relative './reusable'
require_relative './file_manager'

class Reader
  include Reusable
  attr_accessor :dictionary

  def initialize
    @dictionary = {
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
    ["..","..",".."] => ""
    }
  end

  def translate
    b_to_e
    message
  end

  def b_to_e
    english = []
    incoming_braille = FileManager.reading
    a = incoming_braille.split("\n")
    @dictionary.each do |k, v|
      if a == k
        english << v
      end
    end
    FileManager.writing(english.join)
  end
end
