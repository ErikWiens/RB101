# https://launchschool.com/exercises/3c1388d3
# Erik Wiens

# Problem
# In the previous exercise, you developed a method that converts non-negative
# numbers to strings. In this exercise, you're going to extend that method by
# adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string
# representation.

# You may not use any of the standard conversion methods available in Ruby, such
# as Integer#to_s, String(), Kernel#format, etc. You may, however, use
# integer_to_string from the previous exercise.

CONVERT = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(number)
  string = String.new

  loop do
    number, remainder = number.divmod(10)
    string = CONVERT[remainder] + string
    break if number <= 0
  end
  
  string
end

# Approach 1
# def signed_integer_to_string(number)
#   case
#   when number > 0 then '+' + integer_to_string(number)
#   when number < 0 then '-' + integer_to_string(-number)
#   else '0'
#   end
# end

# Approach 2
def signed_integer_to_string(number)
  return '0' if number == 0
  string = integer_to_string(number.abs)
  number < 0 ? '-' + string : '+' + string
end


# Examples / Tests
puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'