# https://launchschool.com/exercises/4a28f116
# Erik Wiens

# Problem
# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of each
# pair of numbers from the arguments that have the same index. You may assume
# that the arguments contain the same number of elements.

# Questions:
# Are the numbers always integers?

# Data Structures
# input: two arrays each containing a list of numbers
# output: an array of numbers that represent the product of each pair of inputs
# intermediate: an array

# Algorithm
# create an empty array (result)
# create a variable to keep track of the index
# step through the input arrays using the index variable
# at each step, multiply the respective numbers and add the product to the result array
# return the result array once finished stepping through the input arrays

# Code

# Approach 1

# def multiply_list(array_one, array_two)
#   result = Array.new
#   index = 0
#   loop do
#     break if index >= array_one.length
#     product = array_one[index] * array_two[index]
#     result << product
#     index += 1
#   end
#   result
# end

# Approach 2

# def multiply_list(array_one, array_two)
#   result = Array.new
#   array_one.each_with_index do |number, index|
#     product = number * array_two[index]
#     result << product
#   end
#   result
# end

# Approach 3

def multiply_list(array_one, array_two)
  array_one.zip(array_two).map { |x, y| x * y }
end

# Examples / Tests
puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
