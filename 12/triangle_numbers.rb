#!/usr/bin/ruby

# Class to generate Triangle number

class TriangleNumbers
  attr_reader :current

  def initialize
    @current = 1
    @increment = 1
  end

  def next
    @increment += 1
    @current += @increment
  end
end

