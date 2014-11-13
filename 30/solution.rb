#!/usr/bin/ruby

# Solution to Project Euler problem 30
# By Trey Thomas
#
# | Surprisingly there are only three numbers that can be written as the sum of
# | fourth powers of their digits:
# |
# | 1634 = 1^4 + 6^4 + 3^4 + 4^4
# | 8208 = 8^4 + 2^4 + 0^4 + 8^4
# | 9474 = 9^4 + 4^4 + 7^4 + 4^4
# |
# | As 1 = 1^4 is not a sum it is not included.
# |
# | The sum of these numbers is 1634 + 8208 + 9474 = 19316.
# |
# | Find the sum of all the numbers that can be written as the sum of fifth
# | powers of their digits.
#
# Tried code-golfing this one. Can't seem to get it under 83 characters.

p (2..999999).select{|n|n.to_s.split('').reduce(0){|s,d|s+=d.to_i**5}==n}.reduce :+

