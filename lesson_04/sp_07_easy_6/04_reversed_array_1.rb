# https://launchschool.com/exercises/eec5e591
# Erik Wiens

# Problem
# Write a method that takes an Array as an argument, and reverses its elements
# in place; that is, mutate the Array passed into this method. The return value
# should be the same Array object.

# Data Structures
# input: an array (of anything)
# output: an array (same as input, but elements in reversed order)

# Algorithm
# step through array from both ends, swapping elements at each step

# Code
def reverse!(list)
  index = 0
  
  while index < list.length / 2
    list[index], list[-1-index] = list[-1-index], list[index]
    index += 1
  end

  list
end

# Examples / Tests
list = [1,2,3,4]
result = reverse!(list)
puts result == [4, 3, 2, 1] # true
puts list == [4, 3, 2, 1] # true
puts list.object_id == result.object_id # true

list = %w(a b e d c)
puts reverse!(list) == ["c", "d", "e", "b", "a"] # true
puts list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
puts reverse!(list) == ["abc"] # true
puts list == ["abc"] # true

list = []
puts reverse!(list) == [] # true
puts list == [] # true