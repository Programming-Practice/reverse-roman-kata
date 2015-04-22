class RomanNumeral

  attr_reader :roman_numeral
  attr_reader :roman_map

  def initialize
    @roman_map = ['I', 'V', 'X', 'L', 'C', 'D', 'M']
    @subsequent_map = ['IV', 'IX', 'XL', 'XC', 'CD', 'CM']
    @roman_numeral = String.new
  end

  def set_roman_numeral(val)
    @roman_numeral = val
  end

  def roman_to_digit
    validate_roman_numeral
    digit_value = handle_subsequent_chars
    @roman_numeral.each_char do |char|
      digit_value = digit_value + single_roman_to_digit(char)
    end
    digit_value
  end

  def handle_subsequent_chars
    val = 0
    @subsequent_map.each do |item|
      if @roman_numeral.index(item) != nil
        @roman_numeral.slice!(item)
        val = val + single_roman_to_digit(item[1]) - single_roman_to_digit(item[0])
      end
    end
    return val
  end

  def single_roman_to_digit(roman_char)
    @roman_map.each_index do |i|
      if roman_char == roman_map[i]
        return (i % 2 == 0 ? 1 : 5) * (10 ** (i / 2))
      end
    end
  end

  def validate_roman_numeral
    last_char = ''
    consecutive_count = 1
    @roman_numeral.each_char do |char|
      if !@roman_map.include? char
        raise IOError, "Invalid Roman Numeral"
      end
      if char == last_char && char != 'M'
        consecutive_count = consecutive_count + 1
      else
        last_char = char
      end
      if consecutive_count == 4
        raise IOError, "Invalid Roman Numeral"
      end
    end
  end

end