# 04_when_will_i_retire.rb
# https://launchschool.com/exercises/d28a76d4
# Erik Wiens

# When will I Retire?

# Build a program that displays when the user will retire and how many 
# years she has to work till retirement.

# Problem
# inputs: two integers representing age and retirement age
# outputs: display year will retire and how many years until retirement (integers)

# Examples

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

# Data Structures
# integers

# Algorithms

# Code

CURRENT_YEAR = Time.now.year

puts ">> What is your age?"
current_age = gets.chomp.to_i

puts ">> At what age would you like to retire?"
retirement_age = gets.chomp.to_i

remaining_years_of_work = retirement_age - current_age 
retirement_year = CURRENT_YEAR + remaining_years_of_work

puts "It's #{CURRENT_YEAR}. You will retire in #{retirement_year}."
puts "You have only #{remaining_years_of_work} years of work to go!"