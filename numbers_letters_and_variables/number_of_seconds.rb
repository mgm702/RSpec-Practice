#!/usr/bin/env ruby

seconds_in_a_min = 60
minutes_in_an_hour = 60
hours_in_a_day = 24
days_in_a_week = 7
seconds_in_an_hour = seconds_in_a_min * minutes_in_an_hour 
seconds_in_a_day = (seconds_in_a_min * minutes_in_an_hour) * hours_in_a_day
seconds_in_a_week = ((seconds_in_a_min * minutes_in_an_hour) * hours_in_a_day) * days_in_a_week 

turn_twenty_age_in_seconds = 20 * (52 * days_in_a_week * ((seconds_in_a_min * minutes_in_an_hour) * hours_in_a_day)) 
turn_one_hundred_age_in_seconds = 100 * (52 * days_in_a_week * ((seconds_in_a_min * minutes_in_an_hour) * hours_in_a_day))



puts "There are #{seconds_in_a_min} seconds in a minute"
puts "There are #{minutes_in_an_hour} minutes in an hour"
puts "There are #{hours_in_a_day} hours in a day"
puts "There are #{days_in_a_week} days in a week"
puts "That means there are:"  
puts "  #{seconds_in_an_hour} seconds in an hour,"
puts "  #{seconds_in_a_day} seconds in a day,"
puts "  #{seconds_in_a_week} seconds in a week.\n"
puts "That means when you turn 20, you've been alive for #{turn_twenty_age_in_seconds} seconds,"
puts "and if you make it to 100, you will have lived #{turn_one_hundred_age_in_seconds} seconds. Make them count!"
