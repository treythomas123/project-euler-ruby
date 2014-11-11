#!/usr/bin/ruby

# Solution to Project Euler problem 20
# By Trey Thomas
#
# | n! means n × (n − 1) × ... × 3 × 2 × 1
# |
# | For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,and the sum of the
# | digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
# |
# | Find the sum of the digits in the number 100!
#
# Ruby makes this type of problem way too easy...

factorial = 100.downto(1).reduce(:*)

digits = factorial.to_s.scan(/./).collect {|d| d.to_i}

puts digits.reduce(:+)

