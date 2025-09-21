gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AnyPatternTest < Minitest::Test
  def test_has_at_least_one_zero
    numbers = [2, 0, 9, 3, 0, 1]
    has_zero = false
    numbers.each do |number|
      has_zero = true if number.zero?
    end
    assert has_zero
  end

  def test_does_not_have_any_zeros
    numbers = [3, 1, 3, 2, 4, 9, 8]
    has_zero = false
    numbers.each do |number|
      # Your code goes here
    end
    refute has_zero
  end

  def test_has_at_least_one_alice
    skip
    has_alice = false
    # Your code goes here
    assert has_alice
  end

  def test_no_alices
    skip
    # Your code goes here
    refute has_alice
  end

  def test_has_a_multi_word_phrase
    skip
    # Your code goes here
    assert has_multi_word_phrase
  end

  def test_no_monkeys
    skip
    # Your code goes here
    refute has_monkeys
  end

  def test_no_multiples_of_five
    skip
    # Your code goes here
    refute multiples_of_5
  end
end
