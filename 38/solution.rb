#!/usr/bin/ruby

# Solution to Project Euler problem 38
# By Trey Thomas
#
# | Take the number 192 and multiply it by each of 1, 2, and 3:
# |
# | 192 × 1 = 192
# | 192 × 2 = 384
# | 192 × 3 = 576
# |
# | By concatenating each product we get the 1 to 9 pandigital, 192384576. We
# | will call 192384576 the concatenated product of 192 and (1,2,3)
# |
# | The same can be achieved by starting with 9 and multiplying by 1, 2, 3, 4,
# | and 5, giving the pandigital, 918273645, which is the concatenated product
# | of 9 and (1,2,3,4,5).
# |
# | What is the largest 1 to 9 pandigital 9-digit number that can be formed as
# | the concatenated product of an integer with (1,2, ... , n) where n > 1?

class String
  def pandigital
    return false if self.length != 9
    (1..9).each do |d|
      return false if self.scan(d.to_s).count != 1
    end
    return true
  end
end

max = 0

(1..10_000).each do |n|
  digits = ''
  i = 1
  while digits.length < 10 do
    digits = (1..i).reduce(""){|c,m| c + (m*n).to_s}
    if digits.pandigital && digits.to_i > max
      max = digits.to_i
    end
    i += 1
  end
end

puts max
