# 06_exclusive_or.rb
# https://launchschool.com/exercises/b02d7e27
# Erik Wiens

# Problem
# The || operator returns a truthy value if either or both of 
# its operands are truthy. If both operands are falsey, it returns 
# a falsey value. The && operator returns a truthy value if both 
# of its operands are truthy, and a falsey value if either operand 
# is falsey. This works great until you need only one of two conditions 
# to be truthy, the so-called exclusive or.

# In this exercise, you will write a function named xor that takes 
# two arguments, and returns true if exactly one of its arguments 
# is truthy, false otherwise. Note that we are looking for a boolean 
# result instead of a truthy/falsy value as returned by || and &&.

# Algorithm
# - either a or b must be true
# - AND
# - either a or b must be false

# Code
def xor?(a, b)
  !!((a || b) && (!a || !b))
end


# Examples / Tests
# puts xor?(5.even?, 4.even?) == true
# puts xor?(5.odd?, 4.odd?) == true
# puts xor?(5.odd?, 4.even?) == false
# puts xor?(5.even?, 4.odd?) == false
# puts xor?(nil, 'a') == true
# puts xor?(nil, nil) == false
puts xor?(nil, nil)