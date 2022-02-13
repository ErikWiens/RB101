# https://launchschool.com/exercises/192719a5
# Erik Wiens

# Problem
# The String#to_i method converts a string of numeric characters (including an
# optional plus or minus sign) to an Integer. String#to_i and the Integer
# constructor (Integer()) behave similarly. In this exercise, you will create a
# method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate
# number as an integer. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about
# invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby to
# convert a string to a number, such as String#to_i, Integer(), etc. Your method
# should do this the old-fashioned way and calculate the result by analyzing the
# characters in the string.

# input: string of digits
# output: integer
# intermediate data structures:
# - array of chars
# - array of digits

# Code

DIGIT_FROM = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(str)
  char_array = str.split('')
  digit_array = char_array.map { |char| DIGIT_FROM[char] }
  
  number = 0
  place = 1
  while digit_array.size > 0
    number += digit_array.pop * place
    place *= 10
  end

  number
end

CONVERT_HEX = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, 
  '6' => 6, '7' => 7, '8' => 8, '9' => 9, 'a' => 10, 'b' => 11, 
  'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15
}

def hexadecimal_to_integer(str)
  chars = str.split('')
  digits = chars.map { |char| CONVERT_HEX[char.downcase] }
  
  number = 0
  digits.each { |digit| number = number * 16 + digit }
  number
end


# Examples / Tests
puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
puts hexadecimal_to_integer('4D9f') == 19871