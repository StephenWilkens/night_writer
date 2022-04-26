class FileManager

  def self.reading
    handle = File.open(ARGV[0], "r")
    incoming_text = handle.read
    handle.close
    incoming_text
  end

  def self.writing(text)
    transcribe = File.open(ARGV[1], "w")
    transcribe.write(text)
    transcribe.close
  end
end
