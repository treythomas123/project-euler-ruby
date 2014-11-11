#!/usr/bin/ruby

# Solution to Project Euler problem 19
# By Trey Thomas
#
# | You are given the following information, but you may prefer to do some
# | research for yourself.
# |
# | 1 Jan 1900 was a Monday.
# | Thirty days has September,
# | April, June and November.
# | All the rest have thirty-one,
# | Saving February alone,
# | Which has twenty-eight, rain or shine.
# | And on leap years, twenty-nine.
# | A leap year occurs on any year evenly divisible by 4, but not on a century
# | unless it is divisible by 400.
# |
# | How many Sundays fell on the first of the month during the twentieth century
# | (1 Jan 1901 to 31 Dec 2000)?
#
# I could implement a date library, but I'd rather learn and use the one that
# comes with Ruby.

require 'date'

sundays_on_the_first = 0

dates = Date.parse("1 Jan 1901").upto Date.parse("31 Dec 2000")

dates.each do |date|
  sundays_on_the_first += 1 if date.sunday? && date.mday == 1
end

puts sundays_on_the_first

