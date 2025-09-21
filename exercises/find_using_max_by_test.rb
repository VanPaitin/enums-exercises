gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FindUsingMaxByTest < Minitest::Test
  # You get the first test for free... it's already passing.
  def test_longest_word
    words = %w[apple banana cherry date eggplant]

    found_word = words.max_by(&:length)

    assert_equal "eggplant", found_word
  end

  # This one is missing the block inside the loop.
  def test_shortest_word
    skip
    words = %w[apple banana cherry date eggplant]

    found_word = words.max_by do |word|
      # write code here
    end

    assert_equal "date", found_word
  end

  # This one is missing the entire loop
  def test_array_with_the_most_items
    skip

    # write code here

    assert_equal [1, 2, 3, 4, 5], biggest_array
  end

  # You're on your own on this one.
  def test_array_with_the_fewest_items
    skip

    # write code here

    assert_equal %i[a b c], smallest_array
  end

  def test_biggest_number
    skip

    # write code here

    assert_equal 1_000_000, found
  end

  def test_smallest_number
    skip

    # write code here

    assert_equal 1, found
  end

  def test_most_programmers
    skip

    # write code here

    assert_equal :ruby, most_programmers.first
  end

  def test_fewest_programmers
    skip

    # write code here

    assert_equal :java, fewest_programmers.first
  end
end
