require 'minitest/autorun'
require 'minitest/pride'
require_relative './number_converter'

class TestNumberConverter < Minitest::Test
  def setup
    @decimal = 4
  end

  def test_small_numbers
    num = NumberConverter.new(@decimal)
    assert_equal "100", num.to_binary
  end

  def test_binary_to_number
    num = NumberConverter.new("1001")
    assert_equal 9, num.to_integer
  end
end
