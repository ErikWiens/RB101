# https://launchschool.com/exercises/690b2900
# Erik Wiens

# Problem
# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character. You may not use String#squeeze
# or String#squeeze!.

# input: string
# output: string

# Data Structures: array of characters

# Algorithm
# convert string to array of single characters
# step through array
# if current character doesn't equal the previous add to new array
# return array converted to string

# Code

# Approach 1
# def crunch(string)
#   # convert string to array of single characters
#   array = string.chars
#   # step through array
#   result = Array.new
#   array.each do |char|
#     # if current character doesn't equal the previous add to new array
#     result << char if char != result.last
#   end
#   # return array converted to string
#   result.join
# end

# Approach 2
# def crunch(string)
#   result = Array.new
#   string.chars.each do |char|
#     # if current character doesn't equal the previous add to new array
#     result << char if char != result.last
#   end
#   # return array converted to string
#   result.join
# end

# Approach 3 - Regex
def crunch(string)
  string.gsub(/(.)\1+/, '\1')
end

# Examples / Tests
puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''