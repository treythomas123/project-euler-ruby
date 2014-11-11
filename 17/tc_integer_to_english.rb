#!/usr/bin/ruby

require_relative 'integer'
require 'test/unit'
 
class TestIntegerToEnglish < Test::Unit::TestCase
  
  def test_under_twenty
    assert_equal("zero", 0.to_english)
    assert_equal("one", 1.to_english)
    assert_equal("nine", 9.to_english)
    assert_equal("ten", 10.to_english)
    assert_equal("eleven", 11.to_english)
    assert_equal("nineteen", 19.to_english)
  end
  
  def test_under_one_hundred
    assert_equal("twenty", 20.to_english)
    assert_equal("twenty-five", 25.to_english)
    assert_equal("ninety", 90.to_english)
    assert_equal("ninety-nine", 99.to_english)
  end
  
  def test_under_one_thousand 
    assert_equal("one hundred", 100.to_english)
    assert_equal("one hundred and one", 101.to_english)
    assert_equal("one hundred and twenty", 120.to_english)
    assert_equal("one hundred and twenty-one", 121.to_english)
    assert_equal("one hundred and ninety-nine", 199.to_english)
    assert_equal("five hundred", 500.to_english)
    assert_equal("nine hundred and ninety-nine", 999.to_english)
  end

  def test_big_numbers
    assert_equal("one thousand", 1000.to_english)
    assert_equal("one thousand and one", 1001.to_english)
    assert_equal("one thousand and ninety-nine", 1099.to_english)
    assert_equal("one thousand, one hundred", 1100.to_english)
    assert_equal("one thousand, nine hundred and ninety-nine", 1999.to_english)
    assert_equal("nine thousand, nine hundred and ninety-nine", 9999.to_english)
    assert_equal("ten thousand", 10000.to_english)
    assert_equal("ninety-nine thousand, nine hundred and ninety-nine", 99999.to_english)
    assert_equal("one hundred thousand", 100000.to_english)
    assert_equal("nine hundred and ninety-nine thousand", 999000.to_english)
    assert_equal("one million", 1_000_000.to_english)
    assert_equal("one billion, one million, one thousand and one", 1_001_001_001.to_english)
  end

  def test_negatives
    assert_equal("negative five", -5.to_english)
    assert_equal("negative one million", -1_000_000.to_english)
  end

end

