# https://launchschool.com/exercises/1ba11514
# Erik Wiens

# Problem
# Write a method that takes two Arrays as arguments, and returns an Array that
# contains all of the values from the argument Arrays. There should be no
# duplication of values in the returned Array, even if there are duplicates in
# the original Arrays.

# Questions
# should it be sorted?
# what will the arrays contain? only integers? only numbers?

# Data Structures
# input: two arrays
# output: one array

# Algorithm
# create a new array
# add the elements of each input array
# remove duplicates
# return resulting array

# Code
def merge(array1, array2)
  array1.concat(array2).uniq
end

# Examples / Tests
puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
