# 05_greeting_a_user.rb
# https://launchschool.com/exercises/1af9d2f7
# Erik Wiens

# Problem
# Write a program that will ask for user's name. The program will then greet the user. 
# If the user writes "name!" then the computer yells back to the user.

# inputs: a string
# outputs: display a string greeting the user

# Examples
# What is your name? Bob
# Hello Bob.

# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

# Data Structures

# Algorithms
# if input string ends with a ! then use caps

# Code
puts "What is your name?"
response = gets.chomp

if response.end_with?('!')
  name = response.chop
  puts "HELLO #{name.upcase}. WHY ARE YOU SCREAMING?"
else
  name = response
  puts "Hello #{name}."
end
