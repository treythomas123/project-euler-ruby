#!/usr/bin/ruby

# Class to represent the Fibonacci sequence -- just call "next" repeatedly
# to generate the sequence.

class FibonacciSequence
  attr_reader :current
  attr_reader :term

  def initialize
    @current = 1
    @next = 1
    @term = 1
  end

  def next
    @term += 1
    previous = @current
    @current = @next
    @next += previous
  end
end

