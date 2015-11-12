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
    load_or_unload_loop('load')
  end

  # This is the load_or_unload_loop method which takes a string argument and
  # feeds it to the get_user_results method in a while loop until user is
  # satisfied with the amound of dishes they've unloaded or loaded.
  def load_or_unload_loop(load_or_unload)
    continue_loading = ''
    while continue_loading != 'no'
      puts "How many dishes would you like to #{load_or_unload}?"
      get_user_results(load_or_unload)
      puts "Would you like to #{load_or_unload} more dishes?"
      puts 'Please say \'no\' if you would like to stop.'
      continue_loading = gets.chomp
    end
  end

  # The get_user_results method takes the variable load_or_unload and
  # determines whether to subtract or add to the @total_dishes variable
  def get_user_results(load_or_unload)
    if load_or_unload == 'load'
      @total_dishes += gets.chomp.to_i
    elsif load_or_unload == 'unload'
      @total_dishes -= gets.chomp.to_i
    end
  end

  # Here is the unload dishes method which will unload a number of
  # dishes and it returns how many dishes are left in the dishwasher
  def unload_dishes
    load_or_unload_loop('unload')
    while @total_dishes > 0
      puts "You still have #{@total_dishes} dishes in the dishwasher, please "\
        'keep going.'
      load_or_unload_loop('unload')
    end
    @total_dishes = 0
    puts 'You\'ve successfully removed all the dishes from the dishwasher.'
    puts "You now have #{@total_dishes} left. Time to clean some more!"
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
  # starts and the unload_dishes method is run
  def start_dish_washer
    if @soap == true && @total_dishes < 50
      puts "The dishwasher successfully cleaned #{@total_dishes} dishes"
      unload_dishes
      @soap = false
    elsif @soap == true && @total_dishes > 50
      puts 'You have to many dishes in the dish washer'\
        '. Please remove them and start dish washer again.'
    elsif @soap == false
      puts 'You must load the soap before you start the dish washer.'
    end
  end
end


dish_washer = DishWasher.new
dish_washer.load_dishes
puts dish_washer.total_dishes
dish_washer.start_dish_washer
puts dish_washer.soap
dish_washer.load_soap
dish_washer.start_dish_washer
