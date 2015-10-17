# Here is the CashRegister class
class CashRegister
  attr_reader :total
  def initialize
    @total = 0
  end

  def purchase(user_value)
    @total += user_value.to_f
    @total
  end

  def pay(user_value)
    @total -= user_value.to_f
    if @total < 0
      puts "Your change is $#{@total.abs.round(2)}"
      @total = 0
    else
      puts "Your new total is $#{@total.round(2)}"
    end
  end
end

register = CashRegister.new
puts register.total
register.purchase(3.78)
register.purchase(5.22)
puts register.total
puts register.pay(5.00)
puts register.total
puts register.pay(4.02)
puts register.total
