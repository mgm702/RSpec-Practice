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
    if @total < 0
      puts "Your change is $#{@total.abs.round(2)}"
      @total = 0
    elsif @total == 0
      puts 'You paid the exact amount, there is no change to give.'
      @total = 0
    else
      "Your new total is $#{@total.abs.round(2)}"
    end
  end
end
