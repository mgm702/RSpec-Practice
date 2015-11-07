# Here is the CashRegister class
class CashRegister
  attr_reader :total
  def initialize
    @total = 0.0
  end

  def purchase(amount)
    @total += amount.to_f
  end

  def pay(amount)
    @total -= amount.to_f
    if @total < 0
      formatted_total = @total.abs
      puts "Your change is $#{format("%.2f", formatted_total)}"
      @total = 0
    elsif @total == 0
      puts 'You paid the exact amount, there is no change to give.'
      @total = 0
    else
      puts "Your new total is $#{format("%.2f", @total)}"
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
