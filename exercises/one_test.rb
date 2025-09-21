gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class OneTest < Minitest::Test
  def test_one_more
    words = %w[bigger better more improved advantageous]
    exactly_one = words.one? do |word|
      word == 'more'
    end
    assert exactly_one
  end

  def test_not_even_one_ring
    ornaments = %w[bracelet anklet earring]
    exactly_one_ring = ornaments.one? do |ornament|
      # Your code goes here
    end
    refute exactly_one_ring
  end

  def test_not_just_one_ring
    skip
    # Your code goes here
    refute exactly_one_ring
  end

  def test_one_time
    skip
    # Your code goes here
    assert exactly_one_time
  end

  def test_one_double_digit_number
    skip
    # Your code goes here
    assert exactly_one_double_digit
  end

  def test_not_one_even_number
    skip
    # Your code goes here
    refute exactly_one_even_number
  end
end
