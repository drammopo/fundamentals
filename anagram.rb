class Anagram
  attr_reader :permutations, :word

  def initialize(word)
    @word = word.downcase
    @permutations = word.downcase.split("").permutation.to_a.map(&:join)
  end

  def match(possible_matches)
    possible_matches.find_all{ |match| permutations.include?(match.downcase) && match.downcase != word }
  end
end
