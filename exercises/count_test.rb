gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class CountTest < Minitest::Test
  def test_count_count_words_with_e
    words = %w[thing phone bark belt shoe bath]
    tally = words.count do |word|
      word.include?('e')
    end
    assert_equal 3, tally
  end

  def test_count_numbers_greater_than_17
    numbers = [9, 18, 12, 17, 1, 3, 99]
    tally = numbers.count do |number|
      # Your code goes here
    end
    assert_equal 2, tally
  end

  def test_count_words_that_are_uppercase
    skip
    # Your code goes here
    assert_equal 3, tally
  end

  def test_count_words_ending_in_ing
    skip
    # Your code goes here
    assert_equal 0, tally
  end

  def test_count_even_numbers
    skip
    # Your code goes here
    assert_equal 4, tally
  end

  def test_count_multiples_of_5
    skip
    # Your code goes here
    assert_equal 3, tally
  end

  def test_count_round_prices
    skip
    # Your code goes here
    assert_equal 2, tally
  end

  def test_count_four_letter_words
    skip
    # Your code goes here
    assert_equal 6, tally
  end
end
