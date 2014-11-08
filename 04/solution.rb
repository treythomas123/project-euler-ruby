#!/usr/bin/ruby

# Solution to https://projecteuler.net/problem=4
# Trey Thomas
#  
# | A palindromic number reads the same both ways. The largest palindrome made 
# | from the product of two 2-digit numbers is 9009 = 91 × 99.
# | 
# | Find the largest palindrome made from the product of two 3-digit numbers.
# 
# For this solution I extended the String class with a method to check whether
# the string is palindromic. Then just brute-forced every combination of 3-digit
# numbers to find the largest palindromic product.
#

class String
  def palindromic?
    self == self.reverse
  end
end

largest_palindrome = 0

(100..999).each do |i|
  (100..999).each do |j|
    product = i * j
    
    if product.to_s.palindromic?
      largest_palindrome = product if product > largest_palindrome
    end
  end
end

puts largest_palindrome

