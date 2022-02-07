# 07_odd_lists.rb
# https://launchschool.com/exercises/7ced73ba
# Erik Wiens

# Problem
# Write a method that returns an Array that contains every other 
# element of an Array that is passed in as an argument. The values 
# in the returned list should be those values that are in the 1st, 
# 3rd, 5th, and so on elements of the argument Array.

# Code

# Approach 1
# def oddities(arr)
#   new_arr = Array.new
#   i = 0
#   while i <= arr.length do
#     new_arr << arr[i]
#     i += 2
#   end
#   new_arr
# end

# Approach 2
def oddities(arr)
  arr.select.with_index { |_, index| index.even? }
end

# Approach 3
# def oddities(arr)
#   new_arr = []
#   i = 0
#   until i >= arr.size do
#     if i.even?
#       new_arr << arr[i]
#     end
#     i += 1
#   end
#   new_arr
# end

# Examples / Tests
puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
