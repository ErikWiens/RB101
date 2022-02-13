# https://launchschool.com/exercises/52e5f20f
# Erik Wiens

# Problem
# In the previous exercise, you developed a method that converts simple numeric
# strings to Integers. In this exercise, you're going to extend that method to
# work with signed numbers.

# Write a method that takes a String of digits, and returns the appropriate
# number as an integer. The String may have a leading + or - sign; if the first
# character is a +, your method should return a positive number; if it is a -,
# your method should return a negative number. If no sign is given, you should
# return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby, such
# as String#to_i, Integer(), etc. You may, however, use the string_to_integer
# method from the previous lesson.

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

# Approach 1
# def string_to_signed_integer(str)
#   if str[0] == '+'
#     string_to_integer(str.delete_prefix('+'))
#   elsif str[0] == '-'
#     string_to_integer(str.delete_prefix('-')) * -1 
#   else
#     string_to_integer(str)
#   end
# end

# Approach 2
def string_to_signed_integer(string)
  sign = string.slice!(0) if string.start_with?('+', '-')
  integer = string_to_integer(string)
  sign == '-' ? -integer : integer 
end


# Examples / Tests
puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100