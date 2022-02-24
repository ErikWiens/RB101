# https://launchschool.com/exercises/77884ef5
# Erik Wiens

# Problem
# Write a method that takes a String as an argument, and returns a new String
# that contains the original value using a staggered capitalization scheme in
# which every other character is capitalized, and the remaining characters are
# lowercase. Characters that are not letters should not be changed, but count as
# characters when switching between upper and lowercase.

# Data Structures
# input: a string
# output: a string
# intermediate: a string

# Algorithm
# create a result string
# step through the input string using an index
# add the given character to the result
# if the index is even and it is a letter, make that character uppercase
# if the index is odd and it is a letter, make that character lowercase
# return the resulting string when finished stepping through the input string

# Code
# def staggered_case(input_string)
#   result_string = ''

#   index = 0
#   loop do
#     break if index >= input_string.length
#     if index.even? && input_string[index] =~ /[a-zA-Z]/
#       result_string << input_string[index].upcase
#     elsif index.odd? && input_string[index] =~ /[a-zA-Z]/
#       result_string << input_string[index].downcase
#     else
#       result_string << input_string[index]
#     end
#     index += 1
#   end

#   result_string
# end

# Further Exploration
# def staggered_case(string, start_uppercase = true)
#   result = ''
#   need_upper = start_uppercase
#   string.chars.each do |char|
#     if need_upper
#       result += char.upcase
#     else
#       result += char.downcase
#     end
#     need_upper = !need_upper
#   end
#   result
# end

# Approach 3: declarative
def staggered_case(string)
  string.split('').each_with_index.reduce('') { |memo, (char, index)| index.even? ? memo << char.upcase : memo << char.downcase }
end

# Examples / Tests
puts staggered_case('I Love Launch School!')      == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS')                   == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers')  == 'IgNoRe 77 ThE 444 NuMbErS'