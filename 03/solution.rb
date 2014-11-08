#!/usr/bin/ruby

# Solution to https://projecteuler.net/problem=3
# Trey Thomas
#  
# | The prime factors of 13195 are 5, 7, 13 and 29.
# |
# | What is the largest prime factor of the number 600851475143 ?
#
# This solution uses Ruby's standard prime library to find the number's prime
# factorization, sorts the result, then returns the last (i.e. largest) factor.

require 'prime'

puts 600851475143.prime_division.sort[-1][0]

