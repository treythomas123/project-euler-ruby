#!/usr/bin/ruby

# CollatzSequence class extending array, which must be initialized
# with a starting number. After initialization, the object contains the
# sequence and can be accessed/used just like any other array.
#
# Also exposed the class method "CollatzSequence.number_after(n)", so this class
# could also be used to find the next number in a Collatz sequence without
# generating the entire sequence.

class CollatzSequence < Array
  attr_reader :starting_number

  def initialize(n)
    @starting_number = n
    
    self.push(n)
    loop do
      self.push(n = CollatzSequence.number_after(n))
      break if n == 1
    end
  end

  def self.number_after(n)
    if n.even?
      n /= 2
    else
      n = 3 * n + 1
    end
  end
end

