#!/usr/bin/ruby

# Solution to Project Euler problem 28
# By Trey Thomas
#
# | Starting with the number 1 and moving to the right in a clockwise direction
# | a 5 by 5 spiral is formed as follows:
# |
# | 21 22 23 24 25
# | 20  7  8  9 10
# | 19  6  1  2 11
# | 18  5  4  3 12
# | 17 16 15 14 13
# |
# | It can be verified that the sum of the numbers on the diagonals is 101.
# |
# | What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral
# | formed in the same way?
#
# Created the SpiralDiagonalSequence class to generate the sequence of numbers
# that would appear on diagonals in the spiral. Then just generate numbers until
# the top right element of the 1001x1001 spiral is reached, adding each one to
# the running total.

require_relative 'spiral_diagonal_sequence.rb'

gen = SpiralDiagonalSequence.new

sum = 0

sum += gen.next until gen.current == 1001**2

puts sum

