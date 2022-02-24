# https://launchschool.com/exercises/d9b79537
# Erik Wiens

# Problem
# Write a method that takes an Array as an argument, and returns two Arrays (as
# a pair of nested Arrays) that contain the first half and second half of the
# original Array, respectively. If the original array contains an odd number of
# elements, the middle element should be placed in the first half Array.

# Data Structures
# input: an array
# output: two arrays nested inside an array

# Algorithm
# find the length of the input array, subtract 1 and divide by 2 (midpoint)
# create a new array and add elements of input array from index 0 up to and including the midpoint
# create another new array and add remaining elements
# return both arrays inside another array

# Code
def halvsies(array)
  half = (array.length + 1) / 2 
  [array.take(half), array.drop(half)]
end

# Examples / Tests
p halvsies([1, 2, 3, 4])     == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3])  == [[1, 5, 2], [4, 3]]
p halvsies([5])              == [[5], []]
p halvsies([])               == [[], []]