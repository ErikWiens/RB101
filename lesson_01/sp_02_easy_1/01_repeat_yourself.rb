# 01_repeat_yourself.rb
# https://launchschool.com/exercises/a018e581
# Erik Wiens

# Write a method that takes two arguments, a string and a positive integer, 
# and prints the string as many times as the integer indicates.

def repeat(message, number)
  number.times { puts message }
end

repeat('Hello', 3)