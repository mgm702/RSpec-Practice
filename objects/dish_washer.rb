# This is the DishWasher class
class DishWasher
  # The attr_reader lets you view the total dishes
  # and if soap is loaded in the dish washer
  attr_reader :total_dishes, :soap
  def initialize
    @soap = false
    @total_dishes = 0
  end

  # This method loads the soap and changes value to true
  def load_soap
    @soap = true
  end

  # This is the load dishes method which runs a
  # while loop that allows the user to load dishes
  # until they say no and then the loop breaks
  def load_dishes
    continue_loading = ''
    while continue_loading != 'no'
      puts 'How many dishes would you like to load?'
      @total_dishes += gets.chomp.to_i
      puts 'Would you like to add more dishes?'
      continue_loading = gets.chomp
    end
  end

  # This is the remove dishes method which takes a value
  # and subtracts it from the dish washer total. If
  # total_dishes < 0 then the value is reset to 0
  def remove_dishes(number_of_dishes)
    @total_dishes -= number_of_dishes
    @total_dishes = 0 if @total_dishes < 0
    puts 'The number of dishes in the dish washer '\
      "is #{@total_dishes}"
  end

  # This is the start dish washer method which uses a
  # conditional statement to evaluate whether the soap
  # has been loaded and the total is under 50. If the
  # user passes these two parameters then the dish washer
  # starts and total_dishes is reset to zero
  def start_dish_washer
    if @soap == true && @total_dishes < 50
      puts 'The dishwasher has succesfully started'
      puts "You've successfully washed #{@total_dishes} dishes"
      @total_dishes = 0
    elsif @soap == true && @total_dishes > 50
      puts 'You have to many dishes in the dish washer'\
        '. Please remove them and start dish washer again.'
    elsif @soap == false
      puts 'You must load the soap before you start the dish washer.'
    end
  end
end
