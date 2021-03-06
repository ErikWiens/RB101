# https://launchschool.com/exercises/cdc65476
# Erik Wiens

# Problem
# In the previous two exercises, you developed methods that convert simple
# numeric strings to signed Integers. In this exercise and the next, you're
# going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a
# string representation.

# You may not use any of the standard conversion methods available in Ruby, such
# as Integer#to_s, String(), Kernel#format, etc. Your method should do this the
# old-fashioned way and construct the string by analyzing and manipulating the
# number.

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

# Examples / Tests
puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'