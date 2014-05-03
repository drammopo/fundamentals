gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'

class TimesTest < Minitest::Test

  def __(n)
    "spank #{n}"
  end

  def test_do_it_again
    happy_birthday = []
    3.times do |i|
      happy_birthday << __(i)
    end
    assert_equal ["spank 0", "spank 1", "spank 2"], happy_birthday
  end

end
