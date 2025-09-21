gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class MapTest < Minitest::Test
  def test_capitalize
    names = %w[alice bob charlie]
    capitalized_names = names.map(&:capitalize)
    assert_equal %w[Alice Bob Charlie], capitalized_names
  end

  def test_doubles
    numbers = [1, 2, 3, 4, 5]

    double = proc { |number| number * 2 }
    doubles = numbers.map(&double)

    assert_equal [2, 4, 6, 8, 10], doubles
  end

  def test_squares
    numbers = [1, 2, 3, 4, 5]
    square = proc { |number| number**2 }
    squares = numbers.map(&square)
    assert_equal [1, 4, 9, 16, 25], squares
  end

  def test_lengths
    names = %w[alice bob charlie david eve]

    # Your code goes here
    assert_equal [5, 3, 7, 5, 3], names.map(&:length)
  end

  def test_normalize_zip_codes
    numbers = [234, 10, 9119, 38_881]
    # Your code goes here
    zip_codes = numbers.map { |number| format('%05d', number) }
    assert_equal %w[00234 00010 09119 38881], zip_codes
  end

  def test_backwards
    names = %w[alice bob charlie david eve]
    # Your code goes here
    backwards = names.map(&:reverse)
    assert_equal %w[ecila bob eilrahc divad eve], backwards
  end

  def test_words_with_no_vowels
    words = %w[green sheep travel least boat]
    # Your code goes here
    without_vowels = words.map { |word| word.gsub(/[aeiou]/, '') }
    assert_equal %w[grn shp trvl lst bt], without_vowels
  end

  def test_trim_last_letter
    animals = %w[dog cat mouse frog platypus]
    # Your code goes here
    trimmed = animals.map { |animal| animal[0..-2] }
    assert_equal %w[do ca mous fro platypu], trimmed
  end
end
