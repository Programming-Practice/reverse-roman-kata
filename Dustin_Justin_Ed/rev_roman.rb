class RomanNumeral

  # I = 1
  # V = 5
  # X = 10
  # L = 50
  # C = 100
  # D = 500
  # M = 1000

  attr_reader :roman_numeral
  attr_reader :roman_map

  def initialize
    @roman_map = ['I', 'V', 'X', 'L', 'C', 'D', 'M']
    @subsequent_map = ['IV', 'VX', 'XL', 'LC', 'CD', 'DM']
    @roman_numeral = String.new
  end

  def set_roman_numeral(val)
    @roman_numeral = val
  end

  def roman_to_digit
    validate_roman_numeral
    handle_subsequent_chars
    digit_value = 0
    @roman_numeral.each_char do |char|
      digit_value = digit_value + single_roman_to_digit(char)
    end
    digit_value
  end

  def handle_subsequent_chars
    @subsequent_map.each do |item|
    if @roman_numeral.index(item) != nil
      puts @roman_numeral[@roman_numeral.index(item), 2]
      puts @roman_numeral
    end
  end

  end

  def single_roman_to_digit(roman_char)
    validate_roman_numeral
    @roman_map.each_index do |i|
      if roman_char == roman_map[i]
        return (i % 2 == 0 ? 1 : 5) * (10 ** (i / 2))
      end
    end
  end

  def validate_roman_numeral
    @roman_numeral.each_char do |char|
      case char
        when 'I'
        when 'V'
        when 'X'
        when 'L'
        when 'C'
        when 'D'
        when 'M'
        else
          raise IOError, "Invalid Roman Numeral"
      end
    end
  end

end