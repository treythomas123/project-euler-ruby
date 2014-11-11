#!/usr/bin/ruby

# Solution to Project Euler problem 24
# By Trey Thomas
#
# | A permutation is an ordered arrangement of objects. For example, 3124 is one
# | possible permutation of the digits 1, 2, 3 and 4. If all of the permutations
# | are listed numerically or alphabetically, we call it lexicographic order.
# | The lexicographic permutations of 0, 1 and 2 are:
# |
# | 012   021   102   120   201   210
# |
# | What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4,
# | 5, 6, 7, 8 and 9?
#
# Ruby has permutations built into arrays, which makes this problem a one-liner.

puts (0..9).to_a.permutation.sort[999_999].join

