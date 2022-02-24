# https://launchschool.com/exercises/860cfef1
# Erik Wiens

# Problem
# Write a method named include? that takes an Array and a search value as
# arguments. This method should return true if the search value is in the array,
# false if it is not. You may not use the Array#include? method in your
# solution.

# Data Structures
# inputs: an array and a 'search value'
# output: a boolean value representing whether the serach value was present in the array

# Algorithm
# step through input array
# if the value at a given index equals the search value, return true
# else false

# Code
def include?(array, search_value)
  index = 0
  loop do
    break if index >= array.length
    return true if array[index] == search_value
    index += 1
  end

  false
end

# Examples / Tests
puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false

