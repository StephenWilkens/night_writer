require_relative './reusable'


class NightWriter
  include Reusable
  def initialize
  end


night_rider = NightWriter.new
puts "Created #{ARGV[1]} containing #{night_rider.total_characters(1)} characters"
end
