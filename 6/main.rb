#!/usr/bin/ruby

# Solution to https://projecteuler.net/problem=6
# Trey Thomas
#  
# | The sum of the squares of the first ten natural numbers is
# | 1^2 + 2^2 + ... + 10^2 = 385
# | The square of the sum of the first ten natural numbers is
# | (1 + 2 + ... + 10)^2 = 55^2 = 3025
# | 
# | Hence the difference between the sum of the squares of the first ten 
# | natural numbers and the square of the sum is 3025 − 385 = 2640.
# | 
# | Find the difference between the sum of the squares of the first one hundred
# | natural numbers and the square of the sum. 
# 
# I learned the reduce function on problem 5, and it's awesome so I used it
# again here.


sum_of_squares = (1..100).reduce { |sum,n| sum + n**2 }
square_of_sum = (1..100).reduce(:+)**2

puts square_of_sum - sum_of_squares
