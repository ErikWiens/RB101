# 07_even_numbers.rb
# https://launchschool.com/exercises/e3801a1a
# Erik Wiens

# Problem
# Print all even numbers from 1 to 99, inclusive, to the console, with 
# each number on a separate line.

# input: nothing
# output: display even numbers from 1 to 99

# Example

# Data Structures
# range

# Algorithm
# step through range from 1 to 99
# if number is even then print it

# Code

(1..99).each { |num| puts num if num.even? }