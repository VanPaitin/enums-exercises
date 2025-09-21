gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class ReducePatternTest < Minitest::Test
  def test_sum_a_list_of_numbers
    numbers = [32, 1, 21, 5, 81, 333]
    sum = 0
    numbers.each do |number|
      sum += number
    end
    assert_equal 473, sum
  end

  def test_subtract_list_of_numbers
    numbers = [28, 12, 38, 1, 91]
    difference = 0
    numbers.each do |number|
      # Your code goes here
    end
    assert_equal(-170, difference)
  end

  def test_multiply_list_of_numbers
    skip
    product = 1
    # Your code goes here
    assert_equal 210, product
  end

  def test_capitalize_keywords_in_phrase_one_fish_two_fish_red_fish_blue_fish
    skip
    phrase = 'one fish two fish red fish blue fish'
    # Your code goes here
    assert_equal 'one FISH two FISH red FISH BLUE FISH', phrase
  end

  def test_divide_560_by_a_bunch_of_numbers
    skip
    quotient = 560
    # Your code goes here
    assert_equal 2, quotient
  end

  def test_subtract_smallest_values_from_100
    skip
    difference = 100
    # Your code goes here
    assert_equal 88, difference
  end

  def test_add_all_the_second_values_together
    skip
    sum = 0
    # Your code goes here
    assert_equal 31, sum
  end
end
