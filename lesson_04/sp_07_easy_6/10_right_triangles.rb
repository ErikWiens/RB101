# https://launchschool.com/exercises/d165e3c4
# Erik Wiens

# Problem
# Write a method that takes a positive integer, n, as an argument, and displays
# a right triangle whose sides each have n stars. The hypotenuse of the triangle
# (the diagonal side in the images below) should have one end at the lower-left
# of the triangle, and the other end at the upper-right.

# Data Structures
# input: positive integer
# output: stars in the form of a right triangle with sides the length of the output

# Algorithm
# print input number of rows
# start with (input - 1) spaces and 1 star
# each succesive row should be one less empty space and one more star until reach input

# Code

def triangle(side_length)
  i = 1
  loop do
    break if i > side_length
    puts "#{' ' * (side_length - i)}#{'*' * i}"
    i += 1
  end
end

# Examples / Tests
triangle(5)
triangle(9)