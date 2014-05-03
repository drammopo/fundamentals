gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class HashesFourTest < Minitest::Test

  def test_transform_an_array_to_a_hash
    # This is the starting point.
    letters = ["a", "b", "c", "d", "e"]

    # This is the work we have to do.
    hash = {}
    letters.each do |letter|
      hash[letter] = true
    end

    # This is what we expect it to look like.
    expected = {
      "a" => true,
      "b" => true,
      "c" => true,
      "d" => true,
      "e" => true,
    }

    # This is proof that we did it correctly.
    assert_equal expected, hash
  end

  def test_another_array
    numbers = [6, 3, 0, 1, 9, 8, 7, 4, 2, 5]

    # Your turn.
    # Do the work to turn numbers into a hash
    # that looks like the `expected` hash.
    hash = {}
    numbers.each do |number|
      hash[number] = true
    end

    expected = {
      6 => true,
      3 => true,
      0 => true,
      1 => true,
      9 => true,
      8 => true,
      7 => true,
      4 => true,
      2 => true,
      5 => true
    }
    assert_equal expected, hash
  end

  def test_another_array_transformation
    names = ["Christopher", "Travis", "Tyson", "Daniella", "Trevor"]
    defaults = [true, true, true, true, true]

    # Turn this into a hash where each name
    # is a key that points to the value true
    # {"Christopher => true} ...

    expected =  {"Christopher"=>true, "Travis"=>true, "Tyson"=>true, "Daniella"=>true, "Trevor"=>true}
    assert_equal expected, Hash[names.zip(defaults)]
  end

  def test_counting_dogs_and_cats
    pets = ["dog", "dog", "cat", "dog", "cat", "cat", "cat"]

    # You can create a hash with a default
    # value other than nil:
    dogs_and_cats = Hash.new(0)

    pets.each do |pet|
      dogs_and_cats[pet] += 1
    end

    expected = {
      "dog" => 3,
      "cat" => 4
    }
    assert_equal expected, dogs_and_cats
  end

  def test_count_the_letters
    letters = ["h", "i", "p", "p", "o", "p", "o", "t", "a", "m", "u", "s"]

    # Your turn
    counts = Hash.new(0)

    letters.each do |letter|
      counts[letter] += 1
    end

    expected = {
      "h"=>1,
      "i"=>1,
      "p"=>3,
      "o"=>2,
      "t"=>1,
      "a"=>1,
      "m"=>1,
      "u"=>1,
      "s"=>1
    }
    assert_equal expected, counts
  end
end

