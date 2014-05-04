class Anagram
  attr_reader :permutations, :text

  def initialize(text)
    @text = text.downcase
    @permutations = text.downcase.split("").permutation.to_a.map(&:join)
  end

  def match(possible_matches)
    possible_matches.find_all{ |match| permutations.include?(match.downcase) && match.downcase != text }
  end
end
