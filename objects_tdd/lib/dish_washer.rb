# This is the DishWasher class
class DishWasher
  attr_accessor :soap, :total_dishes
  def initialize
    @soap = false
    @total_dishes = 0
  end

  def load_soap
    @soap = true
  end

  def unload_dishes
    puts 'How many dishes would you like to unload?'
    @total_dishes -= STDIN.gets.to_i
    @total_dishes = 0 if @total_dishes < 0
    "You have #{@total_dishes} dishes left in the dishwasher"
  end

  def load_dishes
    puts 'How many dishes would you like to load?'
    @total_dishes += STDIN.gets.to_i
    @total_dishes
  end

  def run_dishwasher
    if @soap == false
      'You need to load the soap'
    elsif @total_dishes > 40
      "#{@total_dishes} is to many dishes, please unload some before continuing"
    else
      'Dishwasher successfully ran, please unload it now!'
    end
  end
end
