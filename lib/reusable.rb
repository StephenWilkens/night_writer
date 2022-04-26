require_relative './file_manager'

module Reusable

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
