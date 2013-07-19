module UnitConverter

  class Temperature
    def initialize(degrees)
      @degrees = degrees
    end
  end

  class Fahrenheit < Temperature
    def initialize(degrees)
      super
    end

    def convert
      total = (@degrees - 32) * 5 / 9
    end
  end

  class Celsius < Temperature
    def initialize(degrees)
      super
    end

    def convert
      total = (@degrees * 9) / 5 + 32
    end
  end

end
