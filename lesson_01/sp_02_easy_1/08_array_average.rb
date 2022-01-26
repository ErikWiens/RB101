# 08_array_average.rb
# https://launchschool.com/exercises/5b9a3e04
# Erik Wiens

# Write a method that takes one argument, an array containing integers, 
# and returns the average of all numbers in the array. The array will never 
# be empty and the numbers will always be positive integers. Your result should 
# also be an integer.

# input: an array of integers (never empty, always positive)
# output: an integer (avg of all numbers in array)

# Approach 1: loop
# def average(arr)
#   sum = 0
#   for i in arr
#     sum += i
#   end
#   return sum / arr.length
# end

#Approach 2: reduce
def average(arr)
  total = arr.reduce { |sum, num| sum + num }
  return total / arr.length
  # Further Exploration: Can you change the return value of average from an Integer to a Float?
  # result = total.to_f / arr.count 
  # puts result
  # return result
end

# Tests
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40