gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class ZipTest < Minitest::Test
  def test_speed_interview_pairs
    list1 = %w[Alice Bob Charlie]
    list2 = %w[Xenia Yves Zach]
    pairs = list1.zip(list2)
    assert_equal [%w[Alice Xenia], %w[Bob Yves], %w[Charlie Zach]], pairs
  end

  def test_menu
    list1 = ["NY Strip Steak", "Lamb Stew", "Grilled Salmon"]
    list2 = [29, 23, 26]
    # Your code goes here
    prices = list1.zip list2
    assert_equal [["NY Strip Steak", 29], ["Lamb Stew", 23], ["Grilled Salmon", 26]], prices
  end

  def test_lottery_tickets
    list1 = %w[Alice Bob Charlie]
    list2 = [298, 166, 237]

    tickets = list1.zip list2
    assert_equal [["Alice", 298], ["Bob", 166], ["Charlie", 237]], tickets
  end

  def test_equivalent_dna_sequences
    strand1 = %w[G A T T A C A]
    strand2 = %w[G A T G A C A]
    # Your code goes here
    pairs = strand1.zip strand2
    assert_equal [%w[G G], %w[A A], %w[T T], %w[T G], %w[A A], %w[C C], %w[A A]], pairs
  end

  def test_solitaire
    list1 = %w[Ace 6 10 Queen]
    list2 = %i[clubs diamonds hearts spades]
    # Your code goes here

    cards = list1.zip list2
    assert_equal [["Ace", :clubs], ["6", :diamonds], ["10", :hearts], ["Queen", :spades]], cards
  end

  def test_colors
    list1 = %w[shoes tie umbrella]
    list2 = %w[red pink black]
    # Your code goes here
    fashion = list1.zip list2
    assert_equal [%w[shoes red], %w[tie pink], %w[umbrella black]], fashion
  end
end
