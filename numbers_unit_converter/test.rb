require 'minitest/autorun'
require 'minitest/pride'
require_relative './unit_converter.rb'
require_relative './currency.rb'

class TestUnitConverter < Minitest::Test
  def setup

  end

  def test_fahrenheit_conversion
    temperature = UnitConverter::Fahrenheit.new(95)
    assert_equal 35, temperature.convert
  end

  def test_celsius_conversion
    temperature = UnitConverter::Celsius.new(35)
    assert_equal 95, temperature.convert
  end

  def test_usd_to_cad_conversion
    canadian_dollars = UnitConverter::Currency.convert(15, "USD", "CAD")
    assert_equal 15.572_220_000_000_002, canadian_dollars
  end

end
