#!/usr/bin/env ruby

def bottles_of_beer(number)
  if number == 0
    zero_bottles_of_beer(number)
  elsif number == 1
    one_bottle_of_beer(number)
  elsif number == 2
    two_bottles_of_beer(number)
  else
    count_down_bottles_of_beer(number)
  end
end

def zero_bottles_of_beer(number)
  bottle_of_beer_line = 'No more bottles of beer on the wall, '\
    "no more bottles of beer.\n Go to the store and buy some more, "\
    "#{number + 99} bottles of beer on the wall.\n"
  puts bottle_of_beer_line
end

def one_bottle_of_beer(number)
  bottle_of_beer_line = "#{number} bottle of beer on the wall, "\
    "#{number} bottle of beer.\n Take one down and pass it around, "\
    "no more bottles of beer on the wall.\n"
  puts bottle_of_beer_line
end

def two_bottles_of_beer(number)
  bottle_of_beer_line = "#{number} bottles of beer on the wall, #{number} "\
    "bottles of beer.\n Take one down and pass it "\
    "around, #{number - 1} bottle of beer on the wall.\n"
  puts bottle_of_beer_line
end

def count_down_bottles_of_beer(number)
  bottle_of_beer_line = "#{number} bottles of beer on the wall, #{number} "\
    "bottles of beer.\n Take one down and pass it "\
    "around, #{number - 1} bottles of beer on the wall.\n"
  puts bottle_of_beer_line
end

99.downto(0) { |i| bottles_of_beer(i) }
