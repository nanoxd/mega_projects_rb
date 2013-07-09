class PrimeFactors

  def generate(number)
    return [] if number == 1
    factor = (2..number).find { |x| number % x == 0 }
    [factor] + generate(number / factor)

  end

end
