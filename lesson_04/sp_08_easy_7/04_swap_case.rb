# https://launchschool.com/exercises/f149de8d
# Erik Wiens

# Problem
# Write a method that takes a string as an argument and returns a new string in
# which every uppercase letter is replaced by its lowercase version, and every
# lowercase letter by its uppercase version. All other characters should be
# unchanged.

# You may not use String#swapcase; write your own version of this method.

# Data Structures
# input: a string
# output: a string 
# intermediate: a string

# Algorithm
# create an empty string (result)
# step through input string
# if character is lowercase, add uppercase version to result
# else if character is uppercase, add lowercase version to result
# else add character unchanged to result
# return result string once finished stepping through input string

# Code

# Approach 1
# LOWERCASE_LETTERS = ('a'..'z').to_a
# UPPERCASE_LETTERS = ('A'..'Z').to_a 

# def swapcase(input_string)
#   result_string = ''
#   input_string.each_char do |char|
#     if LOWERCASE_LETTERS.include?(char)
#       result_string << char.upcase
#     elsif UPPERCASE_LETTERS.include?(char)
#       result_string << char.downcase
#     else
#       result_string << char
#     end
#   end
#   result_string
# end

# Approach 2
def swapcase(input_string)
  result_string = ''
  input_string.each_char do |char|
    if char =~ /[a-z]/
      result_string << char.upcase
    elsif char =~ /[A-Z]/
      result_string << char.downcase
    else
      result_string << char
    end
  end
  result_string
end

# Examples / Tests
puts swapcase('CamelCase')          == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV')  == 'tONIGHT ON xyz-tv'