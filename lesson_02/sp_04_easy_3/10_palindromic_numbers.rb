# 10_palindromic_numbers.rb
# https://launchschool.com/exercises/9ba7885a
# Erik Wiens

# Problem
# Write a method that returns true if its integer argument is palindromic, false
# otherwise. A palindromic number reads the same forwards and backwards.

# Code

def palindromic_number?(num)
  str = num.to_s
  str == str.reverse
end

# Examples / Tests
puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
