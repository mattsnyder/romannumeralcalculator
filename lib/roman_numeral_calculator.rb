class RomanNumeralCalculator
  def initialize
    @roman_numerals = {
      'I' => 1,
      'V' => 5,
      'X' => 10
    }
  end
  
  def opposite(value)
    opposite_values = map_opposites(value)
    add_values(opposite_values)
  end

  def add_values(array)
    array.inject(0){|sum, val| sum = sum + val; sum}
  end

  def map_opposites(value)
    tokens = value.split(//)
    tokens.map{|val| @roman_numerals[val] }
  end
  
end
