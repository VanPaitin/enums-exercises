gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class SortByPatternTest < Minitest::Test
  def test_sort_alphabetically
    words = %w[broccoli Carrots FISH Bacon candy]
    transformed = []
    words.each do |word|
      transformed << [word.downcase, word]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each_value do |word|
      sorted << word
    end
    assert_equal %w[Bacon broccoli candy Carrots FISH], sorted
  end

  def test_sort_alphabetically_by_last_letter
    things = %w[pill box glass water sponge]
    transformed = []
    things.each do |thing|
      transformed << [thing[-1], thing]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each_value do |thing|
      sorted << thing
    end
    assert_equal %w[sponge pill water glass box], sorted
  end

  def test_sort_by_distance
    distances = %w[1cm 9cm 30cm 4cm 2cm]
    transformed = []
    distances.each do |distance|
      transformed << [distance.to_i, distance]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each_value do |distance|
      sorted << distance
    end
    assert_equal %w[1cm 2cm 4cm 9cm 30cm], sorted
  end

  def test_sort_by_length
    words = %w[heteromorph ancyloceratina bioengineering mathematical bug]
    transformed = []
    words.each do |word|
      transformed << [word.length, word]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each_value do |word|
      sorted << word
    end
    assert_equal %w[bug heteromorph mathematical ancyloceratina bioengineering], sorted
  end

  def test_sort_by_proximity_to_ten
    prices = [3.02, 9.91, 17.9, 10.01, 11.0]
    transformed = []
    prices.each do |price|
      transformed << [(10.0 - price).abs, price]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each_value do |price|
      sorted << price
    end
    assert_equal [10.01, 9.91, 11.0, 3.02, 17.9], sorted
  end

  def test_sort_by_number_of_cents
    prices = [3.02, 9.91, 7.9, 10.01, 11.0]
    transformed = []
    prices.each do |price|
      transformed << [price - price.floor, price]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each_value do |price|
      sorted << price
    end
    assert_equal [11.0, 10.01, 3.02, 7.9, 9.91], sorted
  end
end
