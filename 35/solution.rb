#!/usr/bin/ruby

# Solution to Project Euler problem 35
# By Trey Thomas
#
# | The number, 197, is called a circular prime because all rotations of the
# | digits: 197, 971, and 719, are themselves prime.
# |
# | There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37,
# | 71, 73, 79, and 97.
# |
# | How many circular primes are there below one million?

require 'prime'

class Integer
  def circular_prime?
    digits = self.to_s.chars.map{|d| d.to_i}

    digits.length.times do
      digits.rotate!
      return false unless digits.join('').to_i.prime?
    end

    return true
  end
end


puts (1..999_999).select{|n| n.circular_prime?}.count
