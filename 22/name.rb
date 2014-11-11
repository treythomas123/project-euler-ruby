#!/usr/bin/ruby

# Name class extending String, with alphabetic value method


class Name < String
  def alphabetic_value
    self.upcase.scan(/./).reduce(0) {|value,l| value += l.ord - 64}
  end
end

