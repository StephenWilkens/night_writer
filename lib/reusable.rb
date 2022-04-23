module Reusable

  def total_characters(argv_index_number)
    lines = File.readlines(ARGV[argv_index_number])
    line_count = lines.size
    text = lines.join
    return text.length
  end

  def input_to_output
    handle = File.open(ARGV[0], "r")
    incoming_text = handle.read
    handle.close
    writer = File.open(ARGV[1], "w")
    writer.write(incoming_text)
    writer.close
  end
end
