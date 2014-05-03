gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'word'

class WordTest < Minitest::Test

  def test_a_word_has_text
    word = Word.new("brilliant")
    assert_equal "brilliant", word.text
  end

  def test_word_has_different_text
    word = Word.new("super")
    assert_equal "super", word.text
  end

  def test_letters
    word = Word.new("forgetful")
    assert_equal ["f", "o", "r", "g", "e", "t", "f", "u", "l"], word.letters
  end

  def test_different_letters
    word = Word.new("potato")
    assert_equal ["p", "o", "t", "a", "t", "o"], word.letters
  end

  def test_letters_will_also_work_for_internet_usernames
    word = Word.new("miranda84")
    assert_equal ["m", "i", "r", "a", "n", "d", "a", "8", "4"], word.letters
  end

  def test_alphabetized
    word = Word.new("corndog")
    assert_equal ["c", "d", "g", "n", "o", "o", "r"], word.alphabetized
  end

  def test_other_alphabetized_letters
    word = Word.new("hippopotomus")
    expected = ["h", "i", "m", "o", "o", "o", "p", "p", "p", "s", "t", "u"]
    assert_equal expected, word.alphabetized
  end

  def test_alphagram
    word = Word.new("pungent")
    assert_equal "egnnptu", word.alphagram
  end

  def test_other_alphagram
    word = Word.new("euphemistically")
    assert_equal "aceehiillmpstuy", word.alphagram
  end

  def test_simplification
    word = Word.new("bubble")
    assert_equal "buble", word.simplified
  end

  def test_more_simplification
    word = Word.new("coffee")
    assert_equal "cofe", word.simplified
  end

  def test_simplify_another_word
    word = Word.new("moonpuddle")
    assert_equal "monpudle", word.simplified
  end
end

