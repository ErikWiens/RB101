# https://launchschool.com/exercises/28ff0d86
# Erik Wiens

# Problem
# Given a string that consists of some words (all lowercased) and an assortment
# of non-alphabetic characters, write a method that returns that string with all
# of the non-alphabetic characters replaced by spaces. If one or more non-
# alphabetic characters occur in a row, you should only have one space in the
# result (the result should never have consecutive spaces).

# input: a string
# output: a string

# Intermediate data structure: array of characters

# Algorithm
# - convert inout string to an array of characters
# - step through the array, converting non-alphabetic characters to spaces
# - step through array again, this time removing extra spaces
# - convert array to string
# - return string

# Approach 1

# def cleanup(string)
#   # - convert inout string to an array of characters
#   array = string.chars
#   alphabetic_characters = 'abcdefghijklmnopqrstuvwxyz'
  
#   # - step through the array, converting non-alphabetic characters to spaces
#   non_alpha_chars_removed = array.map do |char|
#     if alphabetic_characters.include?(char)
#       char
#     else
#       ' '
#     end
#   end

#   # - step through array again, this time removing extra spaces
#   extra_spaces_removed = Array.new
#   previous_char_was_space = false
  
#   non_alpha_chars_removed.each do |char|
#     current_char_is_space = (char == ' ')

#     case [previous_char_was_space, current_char_is_space]
#     when [true, true]
#       previous_char_was_space = true
#       next
#     when [true, false]
#       extra_spaces_removed << char
#       previous_char_was_space = false
#     when [false, true]
#       extra_spaces_removed << char
#       previous_char_was_space = true
#     when [false, false]
#       extra_spaces_removed << char
#       previous_char_was_space = false
#     end
#   end

#   # - convert array to string
#   result = extra_spaces_removed.join()

#   # - return string
#   result
# end

# Approach 2

def cleanup(string)
  # convert input string to an array of characters
  array = string.chars
  
  # step through the array, converting non-alphabetic characters to spaces
  alphabet = ('a'..'z').to_a
  only_alpha = Array.new

  array.each do |char| 
    if alphabet.include?(char)
      only_alpha << char
    else
      # remove extra spaces
      only_alpha << ' ' unless only_alpha.last == ' '
    end
  end
  
  # convert array to string
  only_alpha.join
  # return string
end


# Examples / Tests
puts cleanup("---what's my +*& line?") == ' what s my line '
