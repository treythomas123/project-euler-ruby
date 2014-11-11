#!/usr/bin/ruby

# Solution to Project Euler problem 15
# By Trey Thomas
#
# | Starting in the top left corner of a 2×2 grid, and only being able to move
# | to the right and down, there are exactly 6 routes to the bottom right
# | corner.
# |
# |
# |
# | How many such routes are there through a 20×20 grid?
#
# After computing the values for several smaller grids using my slow solution
# and making some sketches on paper, I realized this problem is basically just
# Pascal's triangle, and the answer for grid size "n" is the center value on 
# row "n" of the triangle.
#
# This is easy to compute, it's just the "choose" operation, which Ruby can do
# using the "combination" method on an array.

n = (ARGV[0] || 20).to_i

puts ([0]*n*2).combination(n).size

