gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FindPatternTest < Minitest::Test
  def test_find_first_seven_letter_word
    words = %w[capricious berry unicorn bag apple festering pretzel pencil]
    found = nil
    words.each do |word|
      if word.length == 7
        found = word
        break
      end
    end
    assert_equal "unicorn", found
  end

  def test_no_waldo
    words = %w[scarf sandcastle flag pretzel crow key]
    found = nil
    words.each do |word|
      # Your code goes here
    end
    assert_equal nil, found
  end

  def test_find_waldo
    skip
    found = nil
    # Your code goes here
    assert_equal "waldo", found
  end

  def test_cannot_find_3_letter_words
    skip
    # Your code goes here
    assert_equal nil, found
  end

  def test_find_13
    skip
    # Your code goes here
    assert_equal 13, found
  end

  def test_find_first_even_number
    skip
    # Your code goes here
    assert_equal 10, found
  end

  def test_find_first_multiple_of_3
    skip
    # Your code goes here
    assert_equal 9, found
  end

  def test_find_first_word_starting_with_q
    skip
    # Your code goes here
    assert_equal "quill", found
  end

  def test_find_first_word_ending_with_er
    skip
    # Your code goes here
    assert_equal "finger", found
  end

  def test_find_first_number_greater_than_20
    skip
    # Your code goes here
    assert_equal 21, found
  end
end
