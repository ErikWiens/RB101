# https://launchschool.com/exercises/3b64283e
# Erik Wiens

# Problem
# Write a method that combines two Arrays passed in as arguments, and returns a
# new Array that contains all elements from both Array arguments, with the
# elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the
# same number of elements.

# Data Structures
# inputs: two arrays
# output: one array with elements of input arrays alternating

# Algorithm
# create new array
# create index variable set to 0
# add element of each inout array at index variable
# increment index and repeat until index equals length of input arrays
# return new array

# Code

# Approach 1
# def interleave(array1, array2)
#   result = Array.new
#   index = 0

#   loop do
#     break if index >= array1.length
#     result << array1[index]
#     result << array2[index]
#     index += 1
#   end

#   result
# end

# Approach 2
def interleave(array1, array2)
  array1.zip(array2).flatten
end
# Examples / Tests
puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

