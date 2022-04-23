module Reusable

  def total_characters(argv_index_number)
    lines = File.readlines(ARGV[argv_index_number])
    line_count = lines.size
    text = lines.join
    return text.length
  end
end
