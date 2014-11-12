#!/usr/bin/ruby

# Extend Rational with a method to represent the fraction as a repeating decimal

class Rational
  def to_repeating_dec
    result = ""
    
    remainder = self.numerator
    

    digit = remainder / self.denominator
    remainder %= self.denominator
    result << digit.to_s + "."

    (1..20).each do |p|
      digit = 10**p * remainder / self.denominator
      remainder %= 

    


    [leading_digits, repeating_digits]
  end
end

