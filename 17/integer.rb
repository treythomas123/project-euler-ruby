#!/usr/bin/ruby

# Extend Integer with to_english to convert the integer into words.

class Integer
  @@bigs = {
    10**123 => "quadragintillion",
    10**120 => "noventrigintillion",
    10**117 => "octotrigintillion",
    10**114 => "septentrigintillion",
    10**111 => "sestrigintillion",
    10**108 => "quinquatrigintillion",
    10**105 => "quattuortrigintillion",
    10**102 => "trestrigintillion",
    10**99 => "duotrigintillion",
    10**96 => "untrigintillion",
    10**93 => "trigintillion",
    10**90 => "novemvigintillion",
    10**87 => "octovigintillion",
    10**84 => "septemvigintillion",
    10**81 => "sesvigintillion",
    10**78 => "quinquavigintillion",
    10**75 => "quattuorvigintillion",
    10**72 => "tresvigintillion",
    10**69 => "duovigintillion",
    10**66 => "unvigintillion",
    10**63 => "vigintillion",
    10**60 => "novendecillion",
    10**57 => "octodecillion",
    10**54 => "septendecillion",
    10**51 => "sedecillion",
    10**48 => "quinquadecillion",
    10**45 => "quattuordecillion",
    10**42 => "tredecillion",
    10**39 => "duodecillion",
    10**36 => "undecillion",
    10**33 => "decillion",
    10**30 => "nonillion",
    10**27 => "octillion",
    10**24 => "septillion",
    10**21 => "sextillion",
    10**18 => "quintillion",
    10**15 => "quadrillion",
    10**12 => "trillion",
    10**9 => "billion",
    10**6 => "million",
    10**3 => "thousand"
  }
  
  @@tens = {
    9 => "ninety",
    8 => "eighty",
    7 => "seventy",
    6 => "sixty",
    5 => "fifty",
    4 => "forty",
    3 => "thirty",
    2 => "twenty"
  }

  @@smalls = {
    19 => "nineteen",
    18 => "eighteen",
    17 => "seventeen",
    16 => "sixteen",
    15 => "fifteen",
    14 => "fourteen",
    13 => "thirteen",
    12 => "twelve",
    11 => "eleven",
    10 => "ten",
    9 => "nine",
    8 => "eight",
    7 => "seven",
    6 => "six",
    5 => "five",
    4 => "four",
    3 => "three",
    2 => "two",
    1 => "one"
  }

  def to_english  
    return "zero" if self == 0
    
    remaining = self.abs
    english = ""

    @@bigs.each do |number,name|
      count = remaining / number
      if count > 0
        english << count.to_english + " " + name
        remaining %= number
        if remaining > 99
          english << ", "
        else
          english << " "
        end
      end
    end
    
    if (hundreds = remaining / 100) > 0
      english << hundreds.to_english + " hundred "
      remaining %= 100
    end

    unless english.empty? || remaining == 0
      english << "and " unless english.empty?
    end

    if remaining > 19
      tens = remaining / 10
      english << @@tens[tens]
      remaining %= 10
      english << "-" if remaining > 0
    end
    
    english << @@smalls[remaining] if remaining > 0
    
    english = "negative " + english if self < 0 
    
    return english.strip
  end

end

