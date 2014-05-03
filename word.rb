class Word
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def letters
    text.split("")
  end

  def alphabetized
    letters.sort
  end

  def alphagram
    alphabetized.join
  end

  def simplified
    text.squeeze
  end
end
