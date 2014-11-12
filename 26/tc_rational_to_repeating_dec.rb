#!/usr/bin/ruby

require_relative 'rational'
require 'test/unit'
 
class TestRationalToRepeatingDecimal < Test::Unit::TestCase
  
  def test_unit_fractions
    assert_equal(["0.5", nil], Rational(1,2).to_repeating_dec)
    assert_equal(["0.", "3"], Rational(1,3).to_repeating_dec)
    assert_equal(["0.25", nil], Rational(1,4).to_repeating_dec)
    assert_equal(["0.2", nil], Rational(1,5).to_repeating_dec)
    assert_equal(["0.1", "6"], Rational(1,6).to_repeating_dec)
    assert_equal(["0.", "142857"], Rational(1,7).to_repeating_dec)
    assert_equal(["0.125", nil], Rational(1,8).to_repeating_dec)
    assert_equal(["0.", "1"], Rational(1,9).to_repeating_dec)
    assert_equal(["0.1", nil], Rational(1,10).to_repeating_dec)
  end
  
end

