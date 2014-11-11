#!/usr/bin/ruby

# Solution to Project Euler problem 16
# By Trey Thomas
#
# | 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# |
# | What is the sum of the digits of the number 2^1000?
#
# Compute value, convert to string, convert string to digits, sum the digits.

n = (ARGV[0] || 1000).to_i

digits = (2**n).to_s.scan(/./).collect {|d| d.to_i}

sum = digits.reduce(:+)

puts sum

