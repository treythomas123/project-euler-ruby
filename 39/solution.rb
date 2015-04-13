#!/usr/bin/ruby

# Solution to Project Euler problem 39
# By Trey Thomas
#
# | If p is the perimeter of a right angle triangle with integral length sides,
# | {a,b,c}, there are exactly three solutions for p = 120.
# |
# | {20,48,52}, {24,45,51}, {30,40,50}
# |
# | For which value of p ≤ 1000, is the number of solutions maximised?
#
# Slow brute-force solution

maxp, max = 0, 0

(1..1000).each do |p|
  solutions = 0

  (1..p).each do |a|
    (1..a).each do |b|
      c = Math.hypot(a,b)
      solutions += 1 if a + b + c == p
    end
  end

  if solutions > max
    maxp, max = p, solutions
  end
end

puts maxp
