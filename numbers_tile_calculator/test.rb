require 'minitest/autorun'
require 'minitest/pride'
require_relative './tile_calculator'

class TestTileCalculator < Minitest::Test

  def setup
    @cost_per_tile = 1.30
  end

  def test_cost_for_a_small_room
    tc = TileCalculator.new(@cost_per_tile, 8, 8)
    assert_equal 83.20, tc.calculate
  end

  def test_cost_for_medium_room
    tc = TileCalculator.new(@cost_per_tile, 12, 10)
    assert_equal 156, tc.calculate
  end

  def test_cost_for_large_room
    tc = TileCalculator.new(@cost_per_tile, 15, 18)
    assert_equal 351, tc.calculate
  end

end
