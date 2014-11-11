#!/usr/bin/ruby

# Extend the Integer class with a method to find all of the Integer's divisors

require 'set'
require 'prime'

class Integer
  def divisors
    # Generate array of prime factors (including repeats)
    prime_factorization = []
    self.prime_division.each do |f| 
      prime_factorization += [f[0]] * f[1]
    end
    
    divisors = [1].to_set
    
    # Add each possible combination of factors multiplied together
    (1..prime_factorization.size).each do |count| 
      prime_factorization.combination(count).each do |combo|
        divisors << combo.reduce(:*)
      end
    end

    return divisors
  end

  def proper_divisors
    divisors.delete(self)
  end

  def abundant?
    pd = proper_divisors
    if pd.empty?
      false
    else
      proper_divisors.reduce(:+) > self
    end
  end
end

