# 04_multiplying_two_numbers.rb
# https://launchschool.com/exercises/d1cd145c
# Erik Wiens

# Problem
# Create a method that takes two arguments, multiplies them together, 
# and returns the result.

# Examples
# multiply(5, 3) == 15

#Code 
def multiply(a, b)
  a * b
end

# Tests
puts multiply(5, 3) == 15

x = [1, 2, 3]
p multiply(x, 3)
p x