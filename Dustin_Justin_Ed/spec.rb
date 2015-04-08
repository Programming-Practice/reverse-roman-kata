require_relative 'rev_roman'
require 'rspec'

RSpec.describe RomanNumeral do

  it 'will initialize as a String object' do
    expect(subject.class).to eq(String)
  end

end