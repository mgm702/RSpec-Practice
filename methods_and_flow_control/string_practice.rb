#!/usr/bin/env ruby

string_var = 'this is a string to practice with'
puts string_var
puts string_var.capitalize
puts string_var.upcase

puts string_var.gsub('string', "'string'").capitalize
puts "The string '#{string_var}' has #{string_var.length} characters"
puts string_var.reverse
puts string_var.replace('practice practice practice!')
