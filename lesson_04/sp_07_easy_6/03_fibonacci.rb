# https://launchschool.com/exercises/1ba53710
# Erik Wiens

# Problem
# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...)
# such that the first 2 numbers are 1 by definition, and each subsequent number
# is the sum of the two previous numbers. This series appears throughout the
# natural world.

# Computationally, the Fibonacci series is a very simple series, but the results
# grow at an incredibly rapid rate. For example, the 100th Fibonacci number is
# 354,224,848,179,261,915,075 -- that's enormous, especially considering that it
# takes 6 iterations before it generates the first 2 digit number.

# Write a method that calculates and returns the index of the first Fibonacci
# number that has the number of digits specified as an argument. (The first
# Fibonacci number has index 1.)

# Questions
# will we always get a number?

# Data Structures
# input: an integer (representing number of digits)
# output: an integer (representing index of first Fibonacci number with specified number of digits)
# intermediate: array of integers (representing Fibonacci sequence)

# Algorithm
# create an empty array to store Fibonacci numbers
# generate and add Fibonacci numbers to array until reach desired number of digits
# return array index of matching Fibonacci number

# Code

def number_of_digits(number)
  number.to_s.length
end

def find_fibonacci_index_by_length(fibonacci_number_length)
  fibonacci_numbers = [1, 1]
  if fibonacci_number_length == 0
    return 0
  end

  loop do
    break if number_of_digits(fibonacci_numbers.last) == fibonacci_number_length
    fibonacci_numbers << fibonacci_numbers[-2] + fibonacci_numbers[-1]
  end

  fibonacci_numbers.length
end

# Examples / Tests
puts find_fibonacci_index_by_length(2)      == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3)      == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10)     == 45
puts find_fibonacci_index_by_length(100)    == 476
puts find_fibonacci_index_by_length(1000)   == 4782
puts find_fibonacci_index_by_length(10000)  == 47847