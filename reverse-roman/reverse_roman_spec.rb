require 'rspec'
require_relative 'reverse_roman'
require_relative 'reverse_roman2'

describe 'Reverse Roman tests' do

  subject {ReverseRoman2.new}

  it 'should convert I to 1' do
    expect(subject.convert('I')).to eq(1)
  end

  it 'should convert III to 3' do
    expect(subject.convert('III')).to eq(3)
  end

  it 'should convert V to 5' do
    expect(subject.convert('V')).to eq(5)
  end

  it 'should convert X to 10' do
    expect(subject.convert('X')).to eq(10)
  end

  it 'should convert L to 50' do
    expect(subject.convert('L')).to eq(50)
  end

  it 'should convert C to 100' do
    expect(subject.convert('C')).to eq(100)
  end

  it 'should convert D to 500' do
    expect(subject.convert('D')).to eq(500)
  end

  it 'should convert M to 1000' do
    expect(subject.convert('M')).to eq(1000)
  end

  it 'should convert IV to 4' do
    expect(subject.convert('IV')).to eq(4)
  end

  it 'should convert XIV to 4' do
    expect(subject.convert('XIV')).to eq(14)
  end

  it 'should convert XL to 40' do
    expect(subject.convert('XL')).to eq(40)
  end

  it 'should convert XC to 90' do
    expect(subject.convert('XC')).to eq(90)
  end

  it 'should convert CD to 400' do
    expect(subject.convert('CD')).to eq(400)
  end

  it 'should convert CM to 900' do
    expect(subject.convert('CM')).to eq(900)
  end

  it 'should convert MCMXC to 1990' do
    expect(subject.convert('MCMXC')).to eq(1990)
  end

  it 'should convert MMVIII to 2008' do
    expect(subject.convert('MMVIII')).to eq(2008)
  end

  it 'should convert XLVII to 47' do
    expect(subject.convert('XLVII')).to eq(47)
  end

  it 'should convert XCIX to 99' do
    expect(subject.convert('XCIX')).to eq(99)
  end

  it 'Converting IIII will raise an error' do
    expect{(subject.convert('IIII'))}.to raise_error(IOError)
  end

  it 'Converting XXXX will raise an error' do
    expect{(subject.convert('XXXX'))}.to raise_error(IOError)
  end

  it 'Converting LLLL will raise an error' do
    expect{(subject.convert('LLLL'))}.to raise_error(IOError)
  end

  it 'Converting CCCC will raise an error' do
    expect{(subject.convert('CCCC'))}.to raise_error(IOError)
  end

  it 'Converting DDDD will raise an error' do
    expect{(subject.convert('DDDD'))}.to raise_error(IOError)
  end

  it 'Converting MMMM will not raise an error' do
    expect(subject.convert('MMMM')).to eq(4000)
  end

  it 'Converting A will raise an error' do
    expect{(subject.convert('A'))}.to raise_error(IOError)
  end


end