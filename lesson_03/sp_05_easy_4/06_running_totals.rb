# https://launchschool.com/exercises/ba434183
# Erik Wiens

# Problem
# Write a method that takes an Array of numbers, and returns an Array with the
# same number of elements, and each element has the running total from the
# original Array.

# input: array of integers
# output: array of integers

# Code

# Approach 1
# def running_total(numbers)
#   new_numbers = Array.new
  
#   running_total = 0
#   i = 0
#   while i < numbers.size do
#     running_total += numbers[i]
#     new_numbers << running_total
#     i += 1
#   end

#   new_numbers
# end

# Approach 2
# def running_total(numbers)
#   running_total = 0
#   numbers.map { |number| running_total += number }
# end

# Approach 3
# def running_total(numbers)
#   running_total = 0
#   numbers.each_with_object([]) { |i, new_numbers| new_numbers << running_total += i }
# end

# Approach 4
def running_total(numbers)
  running_total = 0
  numbers.reduce([]) { |new_numbers, n| new_numbers << (running_total += n) }
end

# Examples / Tests
puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []