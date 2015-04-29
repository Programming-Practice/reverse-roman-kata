class ReverseRoman
  def convert(roman_numerals)
    check_consecutive_numerals(roman_numerals)
    @result = 0
    @index = roman_numerals.length - 1
    while @index >= 0 do
      case roman_numerals[@index]
        when 'I'
          @result += 1
        when 'V'
          do_conversion('I',roman_numerals[@index-1],5,4)
        when 'X'
          do_conversion('I',roman_numerals[@index-1],10,9)
        when 'L'
          do_conversion('X',roman_numerals[@index-1],50,40)
        when 'C'
          do_conversion('X',roman_numerals[@index-1],100,90)
        when 'D'
          do_conversion('C',roman_numerals[@index-1],500,400)
        when 'M'
          do_conversion('C',roman_numerals[@index-1],1000,900)
        else
          raise IOError, "Invalid Roman Numeral: #{roman_numerals[@index]} is not a roman numeral"
      end
      @index -= 1
    end
    return @result
  end
  
  def do_conversion(subtraction_numeral, next_numeral , normal_value, subtracted_value)
    if (next_numeral == subtraction_numeral) && (@index - 1 >= 0)
      @result += subtracted_value
      @index -= 1
    else
      @result += normal_value
    end
  end

  def check_consecutive_numerals(roman_numerals)
    consecutive_numerals = roman_numerals.scan(/(.)\1\1\1/)
    raise IOError, "Invalid Roman Numeral: #{consecutive_numerals[0]} occurs more than three times" unless consecutive_numerals.length == 0 || consecutive_numerals.to_s.include?('M')
  end
  
end