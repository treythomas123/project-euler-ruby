#!/usr/bin/ruby

# Solution to Project Euler problem 34
# By Trey Thomas
#
# | 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.
# |
# | Find the sum of all numbers which are equal to the sum of the factorial of
# | their digits.
# |
# | Note: as 1! = 1 and 2! = 2 are not sums they are not included.
#

class Fixnum
  def factorial 
    return 1 if self == 0
    self.downto(1).to_a.reduce(:*)
  end
end


curiousNumbers = []

(10..100000).each do |n|
  digits = n.to_s.chars.map{|d| d.to_i}
  factorials = digits.map{|d| d.factorial}
  sum = factorials.reduce(:+)
  if sum == n
    curiousNumbers.push n
  end
end


p curiousNumbers.reduce(:+)
