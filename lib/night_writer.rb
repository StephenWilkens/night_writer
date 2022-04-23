require_relative './reusable'


class NightWriter
  include Reusable
  def initialize
  end
end


night_rider = NightWriter.new
night_rider.input_to_output
puts "Created #{ARGV[1]} containing #{night_rider.total_characters(1)} characters"
