# 08_palindromic_stringa_part_1.rb
# https://launchschool.com/exercises/71ca3279
# Erik Wiens

# Problem
# Write a method that returns true if the string passed as an argument is a
# palindrome, false otherwise. A palindrome reads the same forward and backward.
# For this exercise, case matters as does punctuation and spaces.

# Code

# Approach 1
# def palindrome?(input)
#   input.reverse == input
# end

# Approach 2
def palindrome?(input)
  i = 0
  while i <= input.size / 2 do
    return false if input[i] != input[input.size - 1 - i]
    i += 1
  end
  return true
end

# Examples / Tests
puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
puts palindrome?([1, 2, 3, 2, 1]) == true
puts palindrome?([1, 2, 3]) == false
