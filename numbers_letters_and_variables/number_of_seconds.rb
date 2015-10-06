#!/usr/bin/env ruby

seconds_var = 60
minutes_var = 60
hours_var = 24
days_var = 7

puts "There are #{seconds_var} seconds in a minute"
puts "There are #{minutes_var} minutes in an hour"
puts "There are #{hours_var} hours in a day"
puts "There are #{days_var} days in a week"
puts "That means there are:"  
puts "  #{seconds_var * minutes_var} seconds in an hour,"
puts "  #{(seconds_var * minutes_var) * hours_var} seconds in a day,"
puts "  #{((seconds_var * minutes_var) * hours_var) * days_var} seconds in a week.\n"
puts "That means when you turn 20, you've been alive for #{20 * (52 * (((seconds_var * minutes_var) * hours_var) * days_var))} seconds,"
puts "and if you make it to 100, you will have lived #{100 * (52 * (((seconds_var * minutes_var) * hours_var) * days_var))} seconds. Make them count!"
