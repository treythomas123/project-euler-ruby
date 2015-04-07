#!/usr/bin/ruby

# Solution to Project Euler problem 36
# By Trey Thomas
#
# | The decimal number, 585 = 1001001001 (binary), is palindromic in both
# | bases.
# |
# | Find the sum of all numbers, less than one million, which are palindromic in
# | base 10 and base 2.
# |
# | (Please note that the palindromic number, in either base, may not include
# | leading zeros.)
#

class String
  def palindromic
    self == self.reverse
  end
end

p (1..1_000_000).select{|n| n.to_s.palindromic && n.to_s(2).palindromic }.reduce(:+)
