
class NightReader
  attr_accessor :input, :output
  def initialize
    @input = ARGV[0]
    @output = ARGV[1]

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
end