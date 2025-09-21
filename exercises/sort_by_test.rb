gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class SortByTest < Minitest::Test
  def test_sort_alphabetically
    words = %w[broccoli Carrots FISH Bacon candy]
    sorted = words.sort_by(&:downcase)
    assert_equal %w[Bacon broccoli candy Carrots FISH], sorted
  end

  def test_sort_alphabetically_by_last_letter
    things = %w[pill box glass water sponge]
    sorted = things.sort_by do |thing|
      # Your code goes here
    end
    assert_equal %w[sponge pill water glass box], sorted
  end

  def test_sort_by_distance
    skip
    # Your code goes here
    assert_equal %w[1cm 2cm 4cm 9cm 30cm], sorted
  end

  def test_sort_by_length
    skip
    # Your code goes here
    assert_equal %w[bug heteromorph mathematical ancyloceratina bioengineering], sorted
  end

  def test_sort_by_proximity_to_ten
    skip
    # Your code goes here
    assert_equal [10.01, 9.91, 11.0, 3.02, 17.9], sorted
  end

  def test_sort_by_number_of_cents
    skip
    # Your code goes here
    assert_equal [11.0, 10.01, 3.02, 7.9, 9.91], sorted
  end
end
