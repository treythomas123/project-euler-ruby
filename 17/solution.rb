#!/usr/bin/ruby

# Solution to Project Euler problem 17
# By Trey Thomas
#
# | If the numbers 1 to 5 are written out in words: one, two, three, four, five,
# | then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
# |
# | If all the numbers from 1 to 1000 (one thousand) inclusive were written out
# | in words, how many letters would be used?
# |
# |
# |
# | NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and
# | forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20
# | letters. The use of "and" when writing out numbers is in compliance with
# | British usage.
#
# I extended Integer to provide the to_english method, then looped through each 
# number from 1 to 1000, counting the number of letters in each number's english
# representation and adding the counts to a running total.

require_relative 'integer'

letter_count = 0

(1..1000).each do |number|
  letter_count += number.to_english.scan(/\p{Alpha}/).size
end

puts letter_count

