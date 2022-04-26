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
end
