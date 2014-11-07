#!/usr/bin/ruby

# Solution to Project Euler problem 10
# By Trey Thomas
#
# | The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# |
# | Find the sum of all the primes below two million.
#
# Simple solution using standard library prime generator

require 'Prime'

gen = Prime::instance.lazy
sum = 0

while (prime = gen.next) < 2_000_000
  sum += prime
end

puts sum
