require 'rspec'
require_relative 'rev_roman'

# I = 1
# V = 5
# X = 10
# L = 50
# C = 100
# D = 500
# M = 1000

describe RomanNumeral do

  it 'will initialize a RomanNumeral object with a string class attribute' do
    expect(subject.class).to eq(RomanNumeral)
    expect(subject.roman_numeral.class).to eq(String)
  end

  it 'will raise an IOError if invalid roman numeral is set incorrectly' do
    subject.set_roman_numeral('Fail')
    expect{subject.roman_to_digit}.to raise_error(IOError)
  end

  it 'will return "1" when the roman numeral is set to "I"' do
    subject.set_roman_numeral('I')
    expect(subject.roman_to_digit).to eq(1)
  end

  it 'will return "2" when the roman numeral is set to "II"' do
    subject.set_roman_numeral('II')
    expect(subject.roman_to_digit).to eq(2)
  end

  it 'will return "3" when the roman numeral is set to "III"' do
    subject.set_roman_numeral('III')
    expect(subject.roman_to_digit).to eq(3)
  end

  it 'will return "4" when the roman numeral is set to "IV"' do
    subject.set_roman_numeral('IV')
    expect(subject.roman_to_digit).to eq(4)
  end

  it 'will return "5" when the roman numeral is set to "V"' do
    subject.set_roman_numeral('V')
    expect(subject.roman_to_digit).to eq(5)
  end

  it 'will return "6" when the roman numeral is set to "VI"' do
    subject.set_roman_numeral('VI')
    expect(subject.roman_to_digit).to eq(6)
  end

  it 'will return "7" when the roman numeral is set to "VII"' do
    subject.set_roman_numeral('VII')
    expect(subject.roman_to_digit).to eq(7)
  end

  it 'will return "8" when the roman numeral is set to "VIII"' do
    subject.set_roman_numeral('VIII')
    expect(subject.roman_to_digit).to eq(8)
  end

  it 'will return "9" when the roman numeral is set to "IX"' do
    subject.set_roman_numeral('IX')
    expect(subject.roman_to_digit).to eq(9)
  end

  it 'will return "10" when the roman numeral is set to "X"' do
    subject.set_roman_numeral('X')
    expect(subject.roman_to_digit).to eq(10)
  end

  it 'will return "40" when the roman numeral is set to "XL"' do
    subject.set_roman_numeral('X')
    expect(subject.roman_to_digit).to eq(40)
  end

  it 'will return "50" when the roman numeral is set to "L"' do
    subject.set_roman_numeral('L')
    expect(subject.roman_to_digit).to eq(50)
  end

  it 'will return "90" when the roman numeral is set to "LC"' do
    subject.set_roman_numeral('LC')
    expect(subject.roman_to_digit).to eq(90)
  end

  it 'will return "100" when the roman numeral is set to "C"' do
    subject.set_roman_numeral('C')
    expect(subject.roman_to_digit).to eq(100)
  end

  it 'will return "400" when the roman numeral is set to "CD"' do
    subject.set_roman_numeral('CD')
    expect(subject.roman_to_digit).to eq(400)
  end

  it 'will return "500" when the roman numeral is set to "D"' do
    subject.set_roman_numeral('D')
    expect(subject.roman_to_digit).to eq(500)
  end

  it 'will return "900" when the roman numeral is set to "DM"' do
    subject.set_roman_numeral('DM')
    expect(subject.roman_to_digit).to eq(900)
  end

  it 'will return "1000" when the roman numeral is set to "M"' do
    subject.set_roman_numeral('M')
    expect(subject.roman_to_digit).to eq(1000)
  end

  it 'will return "1990" when the roman numeral is set to "MCMXC"' do
    subject.set_roman_numeral('MCMXC')
    expect(subject.roman_to_digit).to eq(1990)
  end

end