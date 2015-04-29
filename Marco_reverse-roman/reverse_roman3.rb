require_relative 'roman_value'

class ReverseRoman3
  def initialize
    @@table = [
        RomanValue.new('IV',4),
        RomanValue.new('IX',9),
        RomanValue.new('XL',40),
        RomanValue.new('XC',90),
        RomanValue.new('CD',400),
        RomanValue.new('CM',900),
        RomanValue.new('I',1),
        RomanValue.new('V',5),
        RomanValue.new('X',10),
        RomanValue.new('L',50),
        RomanValue.new('C',100),
        RomanValue.new('D',500),
        RomanValue.new('M',1000)
    ]
   # @@table.sort_by {|rv| -rv.value}
  end

  def convert(roman_numerals)
    check_consecutive_numerals(roman_numerals)
    result = 0
    @@table.each do |object|
      while roman_numerals.include?(object.roman)
        roman_numerals.slice!(object.roman)
        result += object.value
      end
    end
    return result
  end

  def check_consecutive_numerals(roman_numerals)
    consecutive_numerals = roman_numerals.scan(/(.)\1\1\1/)
    raise IOError, "Invalid Roman Numeral: #{consecutive_numerals[0]} occurs more than three times" unless consecutive_numerals.length == 0 || consecutive_numerals.to_s.include?('M')
  end
end