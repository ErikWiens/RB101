# https://launchschool.com/exercises/577016f3
# Erik Wiens

# Problem
# Write a method that takes an Array, and returns a new Array with the elements
# of the original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method
# you wrote in the previous exercise.

# Data Structures
# input: an array
# output: an array (same but reversed)

# Algorithm
# create empty array
# step through input array from the end
# add each of these elements to the new array
# return the resulting array

# Code

# Approach 1
# def reverse(list)
#   result = Array.new
#   index = list.length - 1

#   while index >= 0
#     result.push(list[index])
#     index -= 1
#   end

#   result
# end

# Approach 2
def reverse(list)
  list.inject([]) { |result, element| result.unshift(element) }
end

# Examples / Tests
puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]                 # => true