#!/usr/bin/env ruby

numbers = []
fizz_buzz_array = []

1.upto(100) { |i| numbers[i - 1] = i }

numbers.each do |number|
  if number % 3 == 0 && number % 5 == 0
    fizz_buzz_array[number - 1] = 'FizzBuzz'
  elsif number % 3 == 0
    fizz_buzz_array[number - 1] = 'Fizz'
  elsif number % 5 == 0
    fizz_buzz_array[number - 1] = 'Buzz'
  else
    fizz_buzz_array[number - 1] = number
  end
end

fizz_buzz_array.each do |array_value|
  puts array_value
end
