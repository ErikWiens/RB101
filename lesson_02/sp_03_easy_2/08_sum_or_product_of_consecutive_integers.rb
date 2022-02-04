# 08_sum_or_product_of_consecutive_integers.rb
# https://launchschool.com/exercises/b720efd9
# Erik Wiens

# Problem
# Write a program that asks the user to enter an integer greater than 0, 
# then asks if the user wants to determine the sum or product of all numbers 
# between 1 and the entered integer.

# inputs:
# - an integer greater than 0
# - a string representing the user's choice between a sum or a product

# outputs:
# an integer representing either the sum or product of all numbers between 1 and entered integer

# Questions:
# 1. "all of the numbers between 1 and the entered integer" inclusive or exclusive?

# Examples
# input: 5 and sum
# output: 1 + 2 + 3 + 4 + 5 = 15

# input: 5 and product
# output: 1 * 2 * 3 * 4 * 5 = 120

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

# Data Structures

# Algorithms
# step through a range from 1 to the entered number
# multiply the first number by 1, after that multiply the previous product by given number
# display the final product

# Code

def sum_to(num)
  (1..num).reduce(0) { |sum, num| sum + num }
end

def product_to(num)
  (1..num).reduce(1) { |product, num| product * num }
end

upper_limit = 0
loop do
  puts ">> Please enter an integer greater than 0:"
  upper_limit = gets.chomp.to_i
  break if upper_limit > 0
  puts ">> That doesn't look right."
end

choice = ''
loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  choice = gets.chomp.downcase
  break if choice == 's' || choice == 'p'
  puts ">> That doesn't look right."
end

if choice == 's'
  result = sum_to(upper_limit)
  puts ">> The sum of the integers between 1 and #{upper_limit} is #{result}."
elsif choice == 'p'
  result = product_to(upper_limit)
  puts ">> The product of the integers between 1 and #{upper_limit} is #{result}."
end