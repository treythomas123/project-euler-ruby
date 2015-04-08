#!/usr/bin/ruby

# Solution to Project Euler problem 37
# By Trey Thomas
#
# | The number 3797 has an interesting property. Being prime itself, it is
# | possible to continuously remove digits from left to right, and remain prime
# | at each stage: 3797, 797, 97, and 7. Similarly we can work from right to
# | left: 3797, 379, 37, and 3.
# |
# | Find the sum of the only eleven primes that are both truncatable from left
# | to right and right to left.
# |
# | NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.

require 'prime'

class Integer
  def truncatable_prime?
    return false unless self.prime?

    digits = self.to_s.chars.map{|d| d.to_i}

    (1..digits.length-1).each do |size|
      return false unless digits.first(size).join('').to_i.prime?
      return false unless digits.last(size).join('').to_i.prime?
    end
    
    return true
  end
end

truncatable_primes = []

n = 10
while truncatable_primes.size < 11 do
  truncatable_primes.push(n) if n.truncatable_prime?
  n += 1
end

puts truncatable_primes.reduce(:+)
