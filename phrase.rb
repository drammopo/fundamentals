class Phrase
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def word_count
    word_count = Hash.new(0)
    words.each do |word|
      word_count[word] += 1
    end
    word_count
  end

  def words
   words_array = @text.downcase.split(/\W+/)
   words_array.reject{ |w| w.empty? }
  end

  def length
    words.count
  end

  def alphabetized
    words.sort
  end

  def loud?
    text.match(/^[A-Z\s]*[0-9\W]*[A-Z]+[0-9A-Z\?!\s]*$/)
  end

  def question?
    text.match(/^(([A-Z])|\d*)[a-zA-Z0-9 ,\.!]*\?$/)
  end

  def silent?
    text.match(/^\s*\S*$/)
  end

  def vulgar?
    words.any? { |word| ['bullshit', 'effing'].include?(word) }
  end
end
