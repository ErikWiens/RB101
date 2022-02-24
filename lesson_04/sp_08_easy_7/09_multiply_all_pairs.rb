# https://launchschool.com/exercises/fd6b285b
# Erik Wiens

# Problem
# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of every
# pair of numbers that can be formed between the elements of the two Arrays. The
# results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

# Data Structures
# input: two arrays of numbers
# output: an array representing the products of every pair of numbers, sorted increasing
# intermediate: an array of number pairs

# Algorithm
# create an array of every possible number pair (see subroutine)
# create an empty array (result)
# step through array of number pairs
# at each step multiply the two numbers and add the product to result
# after finishing iterating through the array of number pairs, sort the result array (increasing)
# return the sorted result array

# subroutine: create an array of every possible number pair
# create an empty result array
# create a variable to represent the index of the first array, set to 0
# create a variable to represent the index of the second array, set to 0
# using the first array index, iterate through the first array
# at each step, iterate through the seond array using the second array index
# at each of these steps, add the number of the first array and the number of the second array
#   at the respective indexes to the result array in a nested array
#   e.g. [[2, 4], [2, 3], [2, 1], [2, 2]]
# after finish iterating, return array of pairs

# Code

# Approach 1

# def make_pairs(list_one, list_two)
#   result = Array.new
#   index_one = 0
#   index_two = 0

#   loop do
#     break if index_one >= list_one.length

#     loop do
#       if index_two >= list_two.length
#         index_two = 0
#         break
#       end

#       result << [list_one[index_one], list_two[index_two]]
#       index_two += 1
#     end

#     index_one += 1
#   end

#   result
# end

# def multiply_all_pairs(list_one, list_two)
#   pairs = make_pairs(list_one, list_two)
#   result = Array.new

#   pairs.each do |x, y|
#     result << x * y
#   end

#   result.sort!
#   result
# end

# Approach 2

# def multiply_all_pairs(list_one, list_two)
#   pairs = list_one.product(list_two)
#   result = Array.new

#   pairs.each do |x, y|
#     result << x * y
#   end

#   result.sort!
#   result
# end

# Approach 3

def multiply_all_pairs(list_one, list_two)
  list_one.product(list_two).map { |x, y| x * y }.sort
end
  

# Examples / Tests
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
