#!/usr/bin/ruby

# Solution to Project Euler problem 33
# By Trey Thomas
#
# | The fraction 49/98 is a curious fraction, as an inexperienced mathematician
# | in attempting to simplify it may incorrectly believe that 49/98 = 4/8, which
# | is correct, is obtained by cancelling the 9s.
# |
# | We shall consider fractions like, 30/50 = 3/5, to be trivial examples.
# |
# | There are exactly four non-trivial examples of this type of fraction, less
# | than one in value, and containing two digits in the numerator and
# | denominator.
# |
# | If the product of these four fractions is given in its lowest common terms,
# | find the value of the denominator.
#

curiousFractions = []

(1..9).each do |n|
  (n+1..9).each do |d|
    (1..9).each do |c|
      nums = [n,c].permutation.map{|p| p.join.to_f}
      dens = [d,c].permutation.map{|p| p.join.to_f}
      nums.product(dens).each do |num,den|
        curiousFractions.push([num,den]) if n.to_f/d == num/den
      end
    end
  end
end


# still need to find the product
