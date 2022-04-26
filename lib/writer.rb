require_relative './reusable'
require_relative './translate'


class Writer
  include Reusable
  def initialize
    @translate = Translate.new
  end

  def translated_text
    @translate.writing
  end

  def translate
    translated_text
    message
  end

  def total_characters
    @lines = []
    if ARGV[1] != nil
      @lines = File.readlines(ARGV[1])
    end
    text = @lines.join
    text.length
  end

  def message
    puts "Created #{ARGV[1]} containing #{total_characters} characters"
  end
end
