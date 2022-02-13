# https://launchschool.com/exercises/675bc8c9
# Erik Wiens

# Problem
# Write a method that searches for all multiples of 3 or 5 that lie between 1
# and some other number, and then computes the sum of those multiples. For
# instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9
# + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# input: positive integer greater than 1
# output: positive integer
# intermediate data structure: array of integers (multiples of 3 or 5)

# Algorithm:
# multiples of 3 to array by looping and incrementing while less than or equal
# to input
# do same with multiples of 5
# ensure no duplicates (?)
# return sum of integers in the array

# Code
def multisum(max_value)
  multiples = Array.new
  
  multiple_of_3 = 3
  while multiple_of_3 <= max_value
    multiples << multiple_of_3
    multiple_of_3 += 3
  end

  multiple_of_5 = 5
  while multiple_of_5 <= max_value
    multiples << multiple_of_5
    multiple_of_5 += 5
  end

  multiples.uniq! # remove duplicates
  multiples.reduce(0) { |sum, n| sum += n }
end

# Examples / Tests
puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168