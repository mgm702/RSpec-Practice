# This is the DishWasher class
class DishWasher
  attr_reader :soap, :total_dishes
  def initialize
    @soap = false
    @total_dishes = 0
  end

  def load_soap
    @soap = true
  end

  def load_dishes
    puts 'How many dishes would you like to load?'
    @total_dishes = gets.chomp
    @total_dishes
  end
end
