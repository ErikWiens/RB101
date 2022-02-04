# 02_how_big_is_the_room.rb
# https://launchschool.com/exercises/7fc5d216
# Erik Wiens

# Build a program that asks a user for the length and width of a room 
# in meters and then displays the area of the room in both square meters 
# and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Problem
# input: 2 numbers (integers? floats?)
# output: display (print) 2 numbers, area in square meters and area in sqft

# Questions:
# to what decimal place? 2nd

# Example
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

# Data Structures

# intermediate type will be a float

# Algorithm
# multiply numbers by each of,
# multiply result by 10.7639 for sqft

# Code

# CONVERSION_RATE = 10.7639

# puts ">> Enter the length of the room in meters:"
# length = gets.chomp.to_f

# puts ">> Enter the width of the room in meters:"
# width = gets.chomp.to_f

# square_meters = length * width
# square_feet = square_meters * CONVERSION_RATE
# puts "The area of the room is #{square_meters} square meters (#{format('%.2f', square_feet)} square feet)."

# Further Exploration

# Modify this program to ask for the input measurements in feet, 
# and display the results in square feet, square inches, and square centimeters.

SQUARE_FEET_TO_SQUARE_METERS_RATE = 0.09290304
SQUARE_FEET_TO_SQUARE_INCHES_RATE = 144

puts ">> Enter the length of the room in feet:"
length = gets.chomp.to_f

puts ">> Enter the width of the room in feet:"
width = gets.chomp.to_f

square_feet = length * width
square_meters = square_feet * SQUARE_FEET_TO_SQUARE_METERS_RATE
square_inches = square_feet * SQUARE_FEET_TO_SQUARE_INCHES_RATE

puts "The area of the room is #{format('%.2f', square_feet)} square feet " + 
     "(#{format('%.2f', square_meters)} square meters or #{format('%.2f', square_inches)} " + 
     "square inches)"