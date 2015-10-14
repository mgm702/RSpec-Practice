#!/usr/bin/env ruby

adjective = []
noun = []
plural_noun = []
verb_ending_in_ing = []

def ask_question(question)
  print "#{question}"
  gets.chomp
end

adjective[0] = ask_question('Give me an adjective: ')
adjective[1] = ask_question('Give me another adjective: ')
noun[0] = ask_question('Give me a noun: ')
noun[1] = ask_question('Give me another noun: ')
plural_noun[0] = ask_question('Give me a plural noun: ')
game = ask_question('Give me a game: ')
plural_noun[1] = ask_question('Give me another plural noun: ')
verb_ending_in_ing[0] = ask_question('Give me a verb ending in \'ing\': ')
verb_ending_in_ing[1] = ask_question('Give me another verb ending in \'ing\': ')
plural_noun[2] = ask_question('Give me another plural noun: ')
verb_ending_in_ing[2] = ask_question('Give me another verb ending in \'ing\': ')
noun[2] = ask_question('Give me another noun: ')
plant = ask_question('Give me a plant: ')
part_of_the_body = ask_question('Give me a part of the body: ')
a_place = ask_question('Give me a place: ')
verb_ending_in_ing[3] = ask_question('Give me another verb ending in \'ing\': ')
adjective[2] = ask_question('Give me an another adjective: ')
number = ask_question('Give me a number: ')
plural_noun[3] = ask_question('Give me another plural noun: ')

completed_mad_lib = 'A vacation is when you take a trip to '\
"some #{adjective[0]} place with your #{adjective[1]} family. "\
"Usually you go to some place that is near a/an #{noun[0]} or up "\
"on a/an #{noun[1]}. A good vacation place is one where you can "\
"ride #{plural_noun[0]} or play #{game} or go hunting for #{plural_noun[1]}. "\
"I like to spend my time #{verb_ending_in_ing[0]} or "\
"#{verb_ending_in_ing[1]}. When parents go on a vacation, "\
"they spend their time eating three #{plural_noun[2]} a day, "\
"and fathers play golf, and mothers sit around #{verb_ending_in_ing[2]}. "\
"Last summer, my little brother fell in a/an #{noun[2]} and got "\
"poison #{plant} all over his #{part_of_the_body}. My family is going "\
"to go to (the) #{a_place}, and I will practice #{verb_ending_in_ing[3]}. "\
'Parents need vacations more than kids because parents are always '\
"very #{adjective[2]} and because they have to work #{number} hours "\
"every day all year making enough #{plural_noun[3]} to pay for the vacation."

puts completed_mad_lib
