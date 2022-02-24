# https://launchschool.com/exercises/8fa5da79
# Erik Wiens

# Problem
# Write a method that takes an array of strings, and returns an array of the
# same string values, except with the vowels (a, e, i, o, u) removed.

# input: an array of strings
# output: an array of strings (with vowels removed)

# Algorithm
# create an empty array
# step through input array
# at each step remove vowels from string and add result to empty array
# return array

# Code
VOWELS = 'aeiouAEIOU'

# def remove_vowels(strings)
#   modified_strings = Array.new

#   strings.each do |string|
#     modified_strings << string.delete(VOWELS)
#   end

#   modified_strings
# end

def remove_vowels(strings)
  strings.map { |string| string.delete(VOWELS) }
end


# Examples / Tests
puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))  == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white))    == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ))               == ['BC', '', 'XYZ']