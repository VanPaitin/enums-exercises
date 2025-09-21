gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class GroupByPatternTest < Minitest::Test
  def test_group_words_by_length
    words = %w[sue alice steve sally adam fort tops dog cat]
    grouped = Hash.new { |hash, key| hash[key] = [] }
    words.each do |word|
      grouped[word.length] << word
    end
    expected = { 3 => %w[sue dog cat], 4 => %w[adam fort tops], 5 => %w[alice steve sally] }
    assert_equal expected, grouped
  end

  def test_group_numbers_by_odd_and_even
    numbers = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
    odd_and_even = Hash.new { |hash, key| hash[key] = [] }
    numbers.each do |number|
      # Your code goes here
    end
    expected = { 1 => [1, 1, 3, 5, 13, 21, 55], 0 => [2, 8, 34] }
    assert_equal expected, odd_and_even
  end

  def test_group_words_by_first_letter
    skip
    words_by_first_letter = Hash.new { |hash, key| hash[key] = [] }
    # Your code goes here
    expected = { "a" => %w[ant axis albatross], "b" => %w[bolt badge butter],
                 "c" => %w[car cdr column] }
    assert_equal expected, words_by_first_letter
  end

  def test_group_words_by_uniqueness
    skip
    # Your code goes here
    expected = { "one" => %w[one one one], "two" => %w[two TWO],
                 "three" => %w[three three three three] }
    assert_equal expected, grouped
  end

  def test_group_by_number_of_zeros
    skip
    # Your code goes here
    expected = { 0 => [1, 3], 2 => [500, 200], 3 => [4000, 3000], 4 => [10_000], 1 => [90, 20], 5 => [500_000] }
    assert_equal expected, grouped
  end

  def test_group_by_order_of_magnitude
    skip
    # Your code goes here
    expected = { 1 => [1, 3], 2 => [93, 21], 3 => [503, 239], 4 => [4938, 3932], 5 => [19_982], 6 => [501_787] }
    assert_equal expected, grouped
  end
end
