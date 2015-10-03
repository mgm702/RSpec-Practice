Then /^the the FizzBuzz output should be shown$/ do
  lines = all_output.split(/\n/)
  expect(lines.count).to eq(100), "FizzBuzz output was not long enough, expected 100 lines, received #{lines.count}"
  (0..99).each do |num|
    number_tested = num + 1
    expected = if number_tested % 15 == 0
                 "FizzBuzz"
               elsif number_tested % 5 == 0
                 "Buzz"
               elsif number_tested % 3 == 0
                 "Fizz"
               else
                 number_tested.to_s
               end
    expect(lines[num]).to eq(expected), "FizzBuzz output for #{number_tested} was #{lines[num]}, not #{expected}"
  end
end

Then /^my generated madlib should be complete$/ do
  my_mad_lib = <<-END_OF_MAD_LIB
A vacation is when you take a trip to some horrible place
with your smelly family. Usually you go to some place
that is near a/an plane or up on a/an train.
A good vacation place is one where you can ride computers
or play Jeopardy or go hunting for school busses. I like
to spend my time yelling or sleeping.
When parents go on a vacation, they spend their time eating
three bicycles a day, and fathers play golf, and mothers
sit around swimming. Last summer, my little brother
fell in a/an tree and got poison cactus all
over his elbow. My family is going to go to (the)
Paris, and I will practice dreaming. Parents
need vacations more than kids because parents are always very
awesome and because they have to work 566
hours every day all year making enough buckets to pay
for the vacation.
  END_OF_MAD_LIB
  my_mad_lib.split("\n").each do |line|
    expect(all_output).to include(line)
  end
end

Then /^I should see the lyric for (\d+) bottles of beer$/ do |bottles_of_beer|
  bottles_of_beer = bottles_of_beer.to_i
  bottles_text = bottles_of_beer > 1 ? 'bottles' : 'bottle'
  bottles_left_text = bottles_of_beer != 2 ? 'bottles' : 'bottle'
  bottles_left = (bottles_of_beer - 1 > 0) ? bottles_of_beer - 1 : 'no more'
  if bottles_of_beer > 1
    expect(all_output).to include("#{bottles_of_beer} #{bottles_text} of beer on the wall, #{bottles_of_beer} #{bottles_text} of beer.")
    expect(all_output).to include("Take one down and pass it around, #{bottles_of_beer - 1} #{bottles_left_text} of beer on the wall.")
  else
    expect(all_output).to include("No more bottles of beer on the wall, no more bottles of beer.")
    expect(all_output).to include("Go to the store and buy some more, 99 bottles of beer on the wall.")
  end
end

Given /^the file '([^\']+)' exists and is executable$/ do |filename|
  if File.exists?(filename)
    expect(File.executable?(filename)).to be_true
  else
    pending "#{filename} needs to be created and executable"
  end
end
