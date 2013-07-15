require 'minitest/autorun'
require 'minitest/pride'
require_relative './calculator'

class CalculatorTest < MiniTest::Test
  
  def test_add_simple_number
    number = Calculator.new
    added_number = number.add(1, 3)
    assert_equal 4, added_number  
  end

  def test_subtract_number
    number = Calculator.new
    total = number.subtract(4, 2)
    assert_equal 2, total
  end

  def test_multiply_numbers
    number = Calculator.new
    total = number.multiply(4, 3)
    assert_equal 12, total
  end

end
