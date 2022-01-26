# 07_strings_strings.rb
# https://launchschool.com/exercises/f37a9e56
# Erik Wiens

# Write a method that takes one argument, a positive integer, and returns 
# a string of alternating 1s and 0s, always starting with 1. The length of 
# the string should match the given integer.


# Approach 1: while loop
# def stringy(num)
#   str = ''
#   count = 1
#   while count <= num
#     if count % 2 == 0
#       str += '0'
#     else
#       str += '1'
#     end
#     count += 1
#   end
#   return str
# end

# Approach 2: iterator
def stringy(num)
  string = ''
  num.times do |i|
    i % 2 == 0 ? string += '1' : string += '0'
  end
  return string
end


# Tests
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'