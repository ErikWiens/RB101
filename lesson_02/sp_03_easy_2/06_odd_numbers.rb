# 06_odd_numbers.rb
# https://launchschool.com/exercises/e7a26cab
# Erik Wiens

# Problem
# Print all odd numbers from 1 to 99, inclusive, to the console, 
# with each number on a separate line.

# input: nothing
# output: all odd numbers from 1 to 99, including 1 and 99

# Example:
# n/a

# Data Structures
# Algorithms

# Code

# (1..99).each { |num| puts num if num % 2 == 1 }

# Further Exploration

# Repeat this exercise with a technique different from the one you just used, 
# and different from the solution shown above. You may want to explore the use 
# Integer#upto or Array#select methods, or maybe use Integer#odd?

# 1.upto(99).each { |num| puts num if num.odd? }

puts (1..99).to_a.select { |num| num.odd? }