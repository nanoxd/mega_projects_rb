class Calculator
  def initialize
    @type = {
      add:      -> (a, b) { a + b }
      subtract: -> (a, b) { a - b }
      multiply: -> (a, b) { a * b }
      divide:   -> (a, b) { a / b }
    }
  end

  def method_missing(calculation, a, b)
    @type[calculation].call(a, b)
  end

end
