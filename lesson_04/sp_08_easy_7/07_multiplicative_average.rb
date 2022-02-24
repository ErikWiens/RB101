# https://launchschool.com/exercises/00ee768d
# Erik Wiens

# Problem
# Write a method that takes an Array of integers as input, multiplies all the
# numbers together, divides the result by the number of entries in the Array,
# and then prints the result rounded to 3 decimal places. Assume the array is
# non-empty.

# Data Structures
# input: an array of integers
# output: nothing, instead the result should be printed (a string)
# intermediate: a float

# Algorithm
# initialize a float set to 1.0 (result)
# step through the array
# each time multiplying result by the given integer
# print result divided by number of integers in the array once finished stepping through the array

# Code

#Approach 1

# def show_multiplicative_average(numbers)
#   total = 1.0
#   numbers.each do |number|
#     total *= number
#   end
#   average = total / numbers.length
#   puts format('%.3f', average)
# end

# Approach 2

def show_multiplicative_average(numbers)
  total = numbers.reduce(1.0) { |total, number| total *= number }
  average = total / numbers.length
  puts format('%.3f', average)
end


# Examples / Tests
show_multiplicative_average([3, 5])                #== '7.500' # => The result is 7.500
show_multiplicative_average([6])                   #== '6.000' # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) #== '28361.667' # => The result is 28361.667