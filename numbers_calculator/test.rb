require 'minitest/autorun'
require 'minitest/pride'
require_relative './calculator'

class CalculatorTest < MiniTest::Test
  
  def test_addition
    number = Calculator.new
    added_number = number.add(1, 3)
    assert_equal 4, added_number  
  end

  def test_subtraction
    number = Calculator.new
    total = number.subtract(4, 2)
    assert_equal 2, total
  end

  def test_multiplication
    number = Calculator.new
    total = number.multiply(4, 3)
    assert_equal 12, total
  end

  def test_division
    number = Calculator.new
    total = number.divide(12, 3)
    assert_equal 4, total
  end

end
