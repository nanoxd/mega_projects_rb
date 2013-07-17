require 'minitest/autorun'
require 'minitest/pride'
require_relative './tax_calculator'

class TestTaxCalculator < Minitest::Test

  def setup
    @tax = 0.0875
  end

  def test_number_plus_taxes
    taxs = TaxCalculator.new(@tax, 100.00)
    assert_equal 108.75, taxs.total
  end

  def test_taxes
    taxs = TaxCalculator.new(@tax, 10)
    assert_equal 0.875, taxs.calculate
  end

  def test_negative_numbers
    taxs = TaxCalculator.new(@tax, -1)
    assert_equal 0, taxs.calculate
  end

  def test_zero
    taxs = TaxCalculator.new(@tax, 0)
    assert_equal 0, taxs.calculate
  end

end
