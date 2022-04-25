module Reusable

  def total_characters
    lines = File.readlines(output)
    text = lines.join
    return text.length
  end

  def translate_e_to_b
    translated = []
    handle = File.open(input, "r")
    incoming_text = handle.read
    handle.close
    incoming_text.each_char do |c|
      @dictionary.each do |k, v|
        if c == k.to_s
          translated << v
        end
      end
    end
    # require "pry"; binding.pry
    translated
  end

end
