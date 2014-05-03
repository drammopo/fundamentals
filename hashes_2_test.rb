gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

# The value in a hash doesn't have to be a simple object
# like a string or an integer. It can be any object.
# Let's look at some examples where the values are arrays.
class HashesTwoTest < Minitest::Test

  # We look around in a neighborhood, and we can see what
  # color the houses are... but we don't know who lives there
  # without asking.
  def test_neighborhood
    neighborhood = {
      'blue house' => ["Annie", "Jim", "Barney"],
      'red house' => ["Bill", "Carolyn", "Frederic"],
      'green house' => ["Fred", "Alex"],
      'yellow house' => ["Timothy", "John", "Penelope", "Rosie"],
      'brown house' => ["Madelaine", "Buck", "Jarred", "Corbin", "Lucas"],
      'peach house' => ["Kaylee", "Grant"]
    }

    # This is how we ask who is in the red house:
    # neighborhood['red house']
    #
    # We can prove that we're right by making an assertion:
    assert_equal ["Bill", "Carolyn", "Frederic"], neighborhood['red house']

    # This is how we add someone to a house:
    neighborhood['red house'] << 'Anna'

    # Your turn.
    # Who lives in the red house?
    assert_equal ["Bill", "Carolyn", "Frederic", "Anna"], neighborhood['red house']
    # Who lives in the peach house?
    assert_equal ["Kaylee", "Grant"], neighborhood['peach house']
    # It gets more complicated if we know the value, but
    # not the key. What if we met a nice fellow named Alex
    # and we know he lives in the neighborhood, but not
    # which house he lives in?
    #
    # This is how we figure out which house Alex lives in:
    house = nil
    neighborhood.each do |color, people|
      if people.include?('Alex')
        house = color
      end
    end
    assert_equal 'green house', house

    # Your turn.
    # Which house does Penelope live in?
    other_house = nil
    neighborhood.each do |color, people|
      if people.include?('Penelope')
        other_house = color
      end
    end
    assert_equal 'yellow house', other_house
    # Which house does Jim live in?
    yet_another_house = nil
    neighborhood.each do |color, people|
      if people.include?('Jim')
        yet_another_house = color
      end
    end
    assert_equal 'blue house', yet_another_house
  end
end

