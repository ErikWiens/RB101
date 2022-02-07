# 05_squaring_an_argument.rb
# https://launchschool.com/exercises/d24fe972
# Erik Wiens

# Problem
# Using the multiply method from the "Multiplying Two Numbers" 
# problem, write a method that computes the square of its argument 
# (the square is the result of multiplying a number by itself).

def multiply(a, b)
  a * b
end

def square(num)
  multiply(num, num)
end

# Examples / Tests
# puts square(5) == 25
# puts square(-8) == 64

# Further Exploration
# What if we wanted to generalize this method to a "power to the n" 
# type method: cubed, to the 4th power, to the 5th, etc. How would we 
# go about doing so while still using the multiply method?

# Approach 1
def power(base, exponent)
  result = 1
  exponent.times do
    result = multiply(result, base)
  end
  result
end

# Approach 2
# def power(base, exponent)
#   Array.new(exponent, base).reduce(1) { |total, num| total * num }
# end

puts power(5, 3) == 125
puts power(7, 3) == 343
puts power(5, 4) == 625
puts power(7, 2) == 49
puts power(5, 5) == 3125
puts power(4, 7) == 16384
puts power(5, 0) == 1