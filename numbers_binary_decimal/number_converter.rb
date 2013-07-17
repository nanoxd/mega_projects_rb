class NumberConverter
  def initialize(number)
    @number = number
  end

  def to_binary
    @number.to_s(2)
  end

  def to_integer
    @number.to_i(2)
  end
end
