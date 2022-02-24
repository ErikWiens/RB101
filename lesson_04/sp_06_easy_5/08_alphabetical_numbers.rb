# https://launchschool.com/exercises/c688f4e5
# Erik Wiens

# Problem
# Write a method that takes an Array of Integers between 0 and 19, and returns
# an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven,
# twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# input: array of integers
# output: array of integers, sorted by spelling

# Data Structure: array

# Algorithm

# Approach 1
# create a hash mapping integers to spellings
# step through array, converting integers to string representations using hash
# sort array by spelling
# step through array, converting strings to integers
# return array

# Approach 2
# first create an array of digits sorted by spelling
# sort input array based on position in the spelling array
# return sorted array

# Code

# Approach 1
# def alphabetic_number_sort(numbers)
#   # create an array mapping integers to spellings
#   convert = %w(zero one two three four five six seven eight nine ten eleven
#   twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty)
#   # step through array, converting integers to string representations using convert
#   words = numbers.map { |number| convert[number] }
#   # sort array by spelling
#   words.sort!
#   # step through array, converting strings to integers
#   sorted_numbers = words.map { |word| convert.index(word) }
#   # return array
#   sorted_numbers
# end

# Approach 2
# def alphabetic_number_sort(numbers)
#   convert = %w(zero one two three four five six seven eight nine ten eleven
#   twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty)
#   numbers.sort_by { |number| convert[number] }
# end

# Approach 3
def alphabetic_number_sort(numbers)
  convert = %w(zero one two three four five six seven eight nine ten eleven
  twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty)
  numbers.sort { |a, b| convert[a] <=> convert[b] }
end

# Examples / Tests
puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]