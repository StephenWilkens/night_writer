
class NightReader
  attr_accessor :input, :output
  def initialize
    @input = ARGV[0]
    @output = ARGV[1]
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
    puts "Created #{output} containing #{total_characters} characters"
  end
end

night_reader = NightReader.new
night_reader.message
