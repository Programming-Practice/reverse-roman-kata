
class ReverseRoman2
  def convert (roman_numerals)
    check_consecutive_numerals(roman_numerals)
    @numerals = {'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000}
    @subtractive_numerals = {'IV' => 4, 'IX' => 9, 'XL' => 40, 'XC' => 90, 'CD' => 400, 'CM' => 900}
    @result = 0
    subtraction_numerals = Array.new

    @subtractive_numerals.keys.each do |item|
      subtraction_numerals << roman_numerals.slice!(item)
    end

    subtraction_numerals.each do |item|
      unless @subtractive_numerals[item] == nil
        @result += @subtractive_numerals[item]
      end
    end

    @index = roman_numerals.length - 1
    while @index >= 0 do
      if @numerals[roman_numerals[@index]]
        @result += @numerals[roman_numerals[@index]]
        @index -= 1
      else
        raise IOError, "Invalid Roman Numeral: #{roman_numerals[@index]} is not a roman numeral"
      end
    end
    return @result
  end

  def check_consecutive_numerals(roman_numerals)
    result = roman_numerals.scan(/((.)\2{3,})/).map(&:first).sort_by(&:length).map {|s| s[0] }
    unless result.length == 0 || result == ['M']
      raise IOError, "Invalid Roman Numeral: #{result} occurs more than three times"
    end
  end
end