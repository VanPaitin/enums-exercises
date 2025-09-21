gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class ZipPatternTest < Minitest::Test
  def test_speed_interview_pairs
    list1 = %w[Alice Bob Charlie]
    list2 = %w[Xenia Yves Zach]
    pairs = []
    list1.length.times do |i|
      pairs << [list1[i], list2[i]]
    end
    assert_equal [%w[Alice Xenia], %w[Bob Yves], %w[Charlie Zach]], pairs
  end

  def test_menu
    list1 = ["NY Strip Steak", "Lamb Stew", "Grilled Salmon"]
    prices = []
    list1.length.times do |i|
      # Your code goes here
    end
    assert_equal [["NY Strip Steak", 29], ["Lamb Stew", 23], ["Grilled Salmon", 26]], prices
  end

  def test_lottery_tickets
    skip
    tickets = []
    # Your code goes here
    assert_equal [["Alice", 298], ["Bob", 166], ["Charlie", 237]], tickets
  end

  def test_equivalent_dna_sequences
    skip
    # Your code goes here
    assert_equal [%w[G G], %w[A A], %w[T T], %w[T G], %w[A A], %w[C C], %w[A A]], pairs
  end

  def test_solitaire
    skip
    # Your code goes here
    assert_equal [["Ace", :clubs], ["6", :diamonds], ["10", :hearts], ["Queen", :spades]], cards
  end

  def test_colors
    skip
    # Your code goes here
    assert_equal [%w[shoes red], %w[tie pink], %w[umbrella black]], fashion
  end
end
