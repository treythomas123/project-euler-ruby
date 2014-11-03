#!/usr/bin/ruby

# Solution to https://projecteuler.net/problem=1
# Trey Thomas
#  
# | If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
# | The sum of these multiples is 23
# |
# | Find the sum of all the multiples of 3 or 5 below 1000
#
# This solution works through the problem in the most obvious way -- go through all the numbers less than 1000 and 
# add them to a running total if they're divisible by 3 or 5.


def multiple_of_3_or_5(num)
  return num % 3 == 0 || num  % 5 == 0
end


sum = 0

(1..999).each do |i|
  sum += i if multiple_of_3_or_5(i)
end

puts sum

