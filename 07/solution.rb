#!/usr/bin/ruby

# Solution to Project Euler problem 7
# By Trey Thomas
#
# | By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
# | that the 6th prime is 13.
# |
# | What is the 10 001st prime number?
#
# I could have used the Sieve of Eratosthenes or some other prime-finding 
# algorithm, but why reinvent the wheel?

require 'prime'

p Prime.take(10_001)[-1]

