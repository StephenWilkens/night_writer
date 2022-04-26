require_relative './file_manager'
class Reader
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
    ["..","..",".."] => ""}


  end

  def total_characters
    @lines = []
    if ARGV[1] != nil
      @lines = File.readlines(ARGV[1])
    end
    text = @lines.join
    return text.length
  end

  def message
    puts "Created #{ARGV[1]} containing #{total_characters} characters"
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
    english.join
  end

  def writing_to_e
    FileManager.writing(b_to_e)
  end
end
