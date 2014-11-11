#!/usr/bin/ruby

# Class to represent the Fibonacci sequence -- just call "next" repeatedly
# to generate the sequence.

class FibonacciSequence  
  def initialize
    @a = 1
    @b = 1
  end

  def next
    previous = @a
    @a = @b
    @b += previous
  end
end

