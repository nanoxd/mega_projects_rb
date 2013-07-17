class TileCalculator
  
  def initialize(tile_cost, length, width)
    @tile_cost = tile_cost
    @length = length
    @width = width
  end

  def calculate
    final_cost = @tile_cost * @length * @width
  end
end
