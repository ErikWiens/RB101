# https://launchschool.com/exercises/1be5fbac
# Erik Wiens

# Problem
# Write a method that takes a single String argument and returns a new string
# that contains the original value of the argument with the first character of
# every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

# Questions:
# - will words always be separated by only one space?

# Data Structures
# input: a string
# output: a string with the first character of every word capitalized and all 
# other letters lowercase
# intermediate: an array

# Algorithm
# split string on spaces
# step through array, capitalizing the first letter of each word
# return array joined with spaces (a string)

# Code

# Approach 1
# def word_cap(string)
#   array = string.split(' ')
#   array.map { |word| word.capitalize }.join(' ')
# end

# Approach 2: without capitalize method
# def capitalize_this(string)
#   result_array = Array.new
#   string.split('').each_with_index do |char, index|
#     if index == 0
#       result_array << char.upcase
#     else
#       result_array << char.downcase
#     end
#   end
#   result_array.join('')
# end

# def capitalize_this(string)
#   string[0].upcase + string[1, string.length].downcase
# end

# def word_cap(string)
#   array = string.split(' ')
#   array.map { |word| capitalize_this(word) }.join(' ')
# end

# Approach 3

def word_cap(string)
  string.split(' ').map(&:capitalize).join(' ')
end


# Examples / Tests
puts word_cap('four score and seven')     == 'Four Score And Seven'
puts word_cap('the javaScript language')  == 'The Javascript Language'
puts word_cap('this is a "quoted" word')  == 'This Is A "quoted" Word'