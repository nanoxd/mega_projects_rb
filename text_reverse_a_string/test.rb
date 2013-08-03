require 'minitest/autorun'
require 'minitest/pride'
require_relative './string_reversal'

class StringReversalTest < MiniTest::Unit::TestCase
  def test_string_is_reversed
    text = StringReversal.new("This should be backwards")
    assert_equal "sdrawkcab eb dluohs sihT", text.string
  end
end
