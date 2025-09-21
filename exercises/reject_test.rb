gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class RejectTest < Minitest::Test
  def test_remove_zeros
    numbers = [2, 93, 7, 0, 0, 1, 0, 31, 0, 368]
    filtered = numbers.reject(&:zero?)
    assert_equal [2, 93, 7, 1, 31, 368], filtered
  end

  def test_remove_vowels
    letters = ["a", "l", "l", " ", "y", "o", "u", "r", " ", "b", "a", "s", "e", " ", "a", "r", "e", " ", "b", "e", "l",
               "o", "n", "g", " ", "t", "o", " ", "u", "s"]
    remaining = letters.reject do |letter|
      # Your code goes here
    end
    assert_equal ["l", "l", " ", "r", " ", "b", "s", " ", "r", " ", "b", "l", "n", "g", " ", "t", " ", "s"], remaining
  end

  def test_remove_numbers_divisible_by_3
    skip
    # Your code goes here
    assert_equal [1, 2, 4, 5, 7, 8, 10, 11, 13, 14, 16, 17, 19, 20], remaining
  end

  def test_remove_words_with_more_than_three_letters
    skip
    # Your code goes here
    assert_equal %w[bad cat dog red], selected
  end

  def test_remove_words_ending_in_e
    skip
    # Your code goes here
    assert_equal %w[you thinking belt sing], selected
  end

  def test_remove_words_ending_in_ing
    skip
    # Your code goes here
    assert_equal %w[finger drought bingo purposeful], selected
  end

  def test_remove_words_containing_e
    skip
    # Your code goes here
    assert_equal %w[four pizza], selected
  end

  def test_remove_dinosaurs
    skip
    # Your code goes here
    assert_equal %w[narwhal eel], notasaurus
  end

  def test_remove_numbers
    skip
    # Your code goes here
    assert_equal %w[cat dog aimless], not_numbers
  end

  def test_remove_floats
    skip
    # Your code goes here
    assert_equal ["cat", "dog", 23, 56, "aimless"], not_numbers
  end

  def test_remove_animals_starting_with_vowels
    skip
    # Your code goes here
    assert_equal %w[bonobo cat dog], remaining
  end

  def test_remove_capitalized_words
    skip
    # Your code goes here
    assert_equal %w[dog Trevor butter], remaining
  end

  def test_remove_arrays
    skip
    # Your code goes here
    assert_equal ["CAT", 23, "AIMLESS", 43, "butter"], remaining
  end

  def test_remove_hashes
    skip
    # Your code goes here
    assert_equal ["cat", 23, "aimless", 43], remaining
  end
end
