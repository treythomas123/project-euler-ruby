#!/usr/bin/ruby

# Solution to Project Euler problem 21
# By Trey Thomas
#
# | Let d(n) be defined as the sum of proper divisors of n (numbers less than n
# | which divide evenly into n).
# | If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and
# | each of a and b are called amicable numbers.
# |
# | For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44,
# | 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4,
# | 71 and 142; so d(284) = 220.
# |
# | Evaluate the sum of all the amicable numbers under 10000.
#
# Extend Integer with proper_divisors (using Integer.divisors from problem 12),
# and define d(n) as described in the problem statement.

require_relative 'integer'
require 'set'

def d(n)
  n.proper_divisors.reduce(:+)
end


amicable_numbers = Set.new

(2..9999).each do |a|
  b = d(a)
  amicable_numbers.add(a) if d(b) == a && a != b
end

puts amicable_numbers.reduce(:+)

