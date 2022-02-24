# https://launchschool.com/exercises/8332cd47
# Erik Wiens

# Problem
# Write a method that returns the next to last word in the String passed to it
# as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.

# Data Structures
# input: a string
# output: a string
# intermediate: an array of strings

# Algorithm
# split the string on blank spaces
# return the element at index -2 of the new array

# Code

def penultimate(string)
  string.split(' ')[-2]
end

# Further Exploration
# Our solution ignored a couple of edge cases because we explicitly stated that
# you didn't have to handle them: strings that contain just one word, and
# strings that contain no words.

# Suppose we need a method that retrieves the middle word of a phrase/sentence. 
# What edge cases need to be considered? How would you handle those edge cases
# without ignoring them? Write a method that returns the middle word of a phrase
# or sentence. It should handle all of the edge cases you thought of.

# Edge Cases
# - empty string: return a blank string
# - string with even number of words: return two words separated by a space
# - only one word: return word

def middle(string)
  array = string.split(' ')
  return '' if array.empty?
  midpoint = array.length / 2

  if array.length.even?
    "#{array[midpoint - 1]} #{array[midpoint]}"
  else
    array[midpoint]
  end
end

# Examples / Tests
# puts penultimate('last word')               == 'last'
# puts penultimate('Launch School is great!') == 'is'

puts middle('') == ''
puts middle('It should handle all of the edge cases') == 'all of'
puts middle('write a method') == 'a'
puts middle('hello') == 'hello'