#!/usr/bin/ruby

# Solution to Project Euler problem 9
# By Trey Thomas
#
# | A Pythagorean triplet is a set of three natural numbers, a < b < c, for
# | which,
# |
# | a2 + b2 = c2
# |
# | For example, 32 + 42 = 9 + 16 = 25 = 52.
# |
# | There exists exactly one Pythagorean triplet for which a + b + c = 1000.Find
# | the product abc.
#
# Not the most elegant solution, but I just tried every value from 1 to 1000
# for a and b, checking whether the combination adds up to 1000 and is a 
# Pythagorean triplet.

(1..1000).each do |a|
  (1..1000).each do |b|
    c = Math.sqrt(a**2 + b**2) 
    if a + b + c == 1000 && a**2 + b**2 == c**2
      puts (a * b * c).to_i
      exit
    end
  end
end


