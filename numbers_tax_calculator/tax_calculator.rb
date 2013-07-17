class TaxCalculator
  attr_accessor :tax_rate, :amount

  def initialize(tax_rate, amount)
    @tax_rate = tax_rate.to_f
    @amount = amount.to_f
  end

  def calculate
    @taxes = @amount * @tax_rate
    if @taxes <= 0
      0
    else
      @taxes
    end
  end

  def total
    calculate
    @total_amount = @taxes + @amount
  end 

end
