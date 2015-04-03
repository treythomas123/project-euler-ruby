#!/usr/bin/ruby

# Solution to Project Euler problem 32
# By Trey Thomas
#
# | We shall say that an n-digit number is pandigital if it makes use of all the
# | digits 1 to n exactly once; for example, the 5-digit number, 15234, is 1
# | through 5 pandigital.
# |
# | The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing
# | multiplicand, multiplier, and product is 1 through 9 pandigital.
# |
# | Find the sum of all products whose multiplicand/multiplier/product identity
# | can be written as a 1 through 9 pandigital.
# |
# | HINT: Some products can be obtained in more than one way so be sure to only
# | include it once in your sum.
#
#

def pandigital(a, b, p)
  digits = "#{a}#{b}#{p}"
  return false if digits.length != 9
  (1..9).each do |d|
    return false if digits.scan(d.to_s).count != 1
  end
  return true
end

pandigitals = {}

(1..100).each do |a|
  (1..10000).each do |b|
    p = a * b
    pandigitals[p] = true if pandigital(a, b, p)
  end
end

puts pandigitals.keys.reduce(:+) 
