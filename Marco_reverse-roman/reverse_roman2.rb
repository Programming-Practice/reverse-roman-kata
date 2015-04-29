
class ReverseRoman2
  def convert (roman_numerals)
    check_consecutive_numerals(roman_numerals)
    @numerals = {'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000}
    @subtractive_numerals = {'IV' => 4, 'IX' => 9, 'XL' => 40, 'XC' => 90, 'CD' => 400, 'CM' => 900}
    @result = 0

    @subtractive_numerals.keys.each do |item|
      if roman_numerals.include?(item)
        roman_numerals.slice!(item)
        @result += @subtractive_numerals[item]
      end
    end

    roman_numerals.each_char do |char|
      raise IOError, "Invalid Roman Numeral: #{char} is not a roman numeral" unless @numerals[char]
      @result += @numerals[char]
    end
    return @result
  end

  def check_consecutive_numerals(roman_numerals)
    consecutive_numerals = roman_numerals.scan(/(.)\1\1\1/)
    raise IOError, "Invalid Roman Numeral: #{consecutive_numerals[0]} occurs more than three times" unless consecutive_numerals.length == 0 || consecutive_numerals.to_s.include?('M')
  end
end