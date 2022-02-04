# 01_how_old_is_teddy.rb
# https://launchschool.com/exercises/84376930
# Erik Wiens

# Build a program that randomly generates and prints Teddy's age. 
# To get the age, you should generate a random number between 20 and 200.

# Problem
# input: nothing
# output: a string

# Questions
# including 20 and 200?

# Examples
# "Teddy is 69 years old!"

# Data Structures
# input: nothing
# output: a string
# intermediate: integer representing age

# Algorithms
# assign a random number between 20 and 200 to a variable
# return a sentence with that number

# Code

# Approach 1
# age = (20..200).to_a.sample
# puts "Teddy is #{age} years old!"

# Approach 2
# age = rand(181) + 20
# puts "Teddy is #{age} years old!"

# Approach 3
puts "What is your teddy bear's name?"
name = gets.chomp.strip

if name.length == 0
  name = 'Teddy'
end

age = rand(20..200)
puts "#{name} is #{age} years old!"