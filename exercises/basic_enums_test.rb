gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class BasicEnumsTest < Minitest::Test
  def test_solve_for_x
    s = ''
    5.times do
      s << 'x'
    end
    assert_equal 'xxxxx', s
  end

  def test_simple_sum
    sum = 0
    i = 1
    while sum < 15
      sum += i
      i += 1
    end
    assert_equal 15, sum
  end
end
