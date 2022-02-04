# 03_tip_calculator.rb
# https://launchschool.com/exercises/90d719d7
# Erik Wiens

# Problem
# Create a simple tip calculator. The program should prompt for a bill amount 
# and a tip rate. The program must compute the tip and then display both the tip 
# and the total amount of the bill.

# inputs: 
#   - bill amount (float)
#   - tip rate (integer e.g. 15 is 15%)
# outputs:
#   - tip amount (float, 2 decimals)
#   - total ampount (float, 2 decimals)
#   - keyword: display

# Questions:
# - will we always get digits?
# - zero?
# - negative numbers?

# Examples
# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

# Data Structures
# inputs: strings, convert to floats
# outputs: display 2 interpolated strings

# Algorithms

# Code
 puts "What is the bill? e.g. 198.15 or 200"
 bill_amount = gets.chomp.to_f

 puts "What is the tip percentage? Enter 15 for 15%"
 tip_rate = gets.chomp.to_f / 100

 tip_amount = bill_amount * tip_rate
 puts "The tip is $#{format('%.2f', tip_amount)}"

 total = bill_amount + tip_amount
 puts "The total is $#{format('%.2f', total)}"