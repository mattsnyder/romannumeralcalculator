require './lib/roman_numeral_calculator'
require 'rspec/given'

describe "Calculate the opposite of roman numeral or integer" do

  describe "when passing in simple roman numerals" do
    Then { 'I'.should be_opposite(1) }
    Then { 'V'.should be_opposite(5) }
    Then { 'X'.should be_opposite(10) }
  end

  describe "when passing in compound roman numberals" do
    Then { 'II'.should be_opposite(2) }
    Then { 'III'.should be_opposite(3) }
    Then { 'XX'.should be_opposite(20) }
  end

  describe "when passing in complex roman numerals" do
    Then { 'IV'.should be_opposite(4) }
  end



end


Spec::Matchers.define :be_opposite do |expected|
  match do |actual|
    RomanNumeralCalculator.new.opposite(actual) == expected
  end

  failure_message_for_should do
    "Expected #{actual} to be the opposite of #{criteria}"
  end

  failure_message_for_should_not do
    "Expected #{actual} to not be the opposite of #{criteria}"
  end

  description do
    "#{actual} be an opposite of #{expected}"
  end
end


