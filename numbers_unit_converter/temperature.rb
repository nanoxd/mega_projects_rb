class Temperature

end

class Fahrenheit < Temperature
  def initialize(degrees)
    @degrees = degrees
  end

  def convert
    celsius = (@degrees - 32) * 5 / 9
  end
end
