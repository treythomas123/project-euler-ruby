#!/usr/bin/ruby

# Solution to https://projecteuler.net/problem=5
# Trey Thomas
#  
# | 2520 is the smallest number that can be divided by each of the numbers from 
# | 1 to 10 without any remainder.
# | 
# | What is the smallest positive number that is evenly divisible by all of the 
# | numbers from 1 to 20?
# 
# Tried a little code golf for this problem... I had this, but suspected  it 
# could be made shorter somehow:
# l=1;(1..20).each{|i|l=l.lcm(i)};p l
#
# Googling led me to the reduce function, which works perfectly here and pretty
# much does the exact same thing. It's also much more readable.

p (1..20).reduce(:lcm)

