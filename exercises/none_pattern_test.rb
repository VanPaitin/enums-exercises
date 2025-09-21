gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class NonePatternTest < Minitest::Test
  def test_none_are_broken
    things = %w[functional working works fixed good]
    none_broken = true
    things.each do |thing|
      none_broken = false if thing == "broken"
    end
    assert none_broken
  end

  def test_double_negative
    numbers = [9, 3, 3, 7, 6, -5, 1]
    not_none_negative = true
    numbers.each do |number|
      # Your code goes here
    end
    refute not_none_negative
  end

  def test_none_are_negative
    skip
    none_negative = true
    # Your code goes here
    assert none_negative
  end

  def test_none_shall_pass
    skip
    # Your code goes here
    assert none_shall_pass
  end

  def test_one_or_more_shall_pass
    skip
    # Your code goes here
    refute none_shall_pass
  end

  def test_none_even
    skip
    # Your code goes here
    assert none_even
  end
end
