# This is the Cash Register class
class CashRegister
  attr_reader :total

  def initialize
    @total = 0
  end

  def purchase(amount)
    @total += amount
  end

  def pay(amount)
    @total -= amount
    "Your new total is $#{@total.abs.round(2)}"
  end
end
