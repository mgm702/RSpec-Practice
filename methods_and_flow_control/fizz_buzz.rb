#!/usr/bin/env ruby

number_var = 1

def fizz_buzz_test(number)
  if number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  elsif number % 3 == 0
    'Fizz'
  elsif number % 5 == 0
    'Buzz'
  else
    number
  end
end

while number_var < 101
  puts fizz_buzz_test(number_var)
  number_var += 1
end
