require_relative './reusable'
require_relative './translate'


class NightWriter
  include Reusable
  attr_accessor :input, :output
  def initialize
    @input = ARGV[0]
    @output = ARGV[1]
    @translate = Translate.new
  end

  def translate
    @translate.write_input_to_output_file
  end
end






night_rider = NightWriter.new
night_rider.input = './message.txt' if night_rider.input.nil?
night_rider.output = './braille.txt' if night_rider.output.nil?
night_rider.translate
puts "Created #{ARGV[1]} containing #{night_rider.total_characters} characters"
