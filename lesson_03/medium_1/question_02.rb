# https://launchschool.com/lessons/263069da/assignments/6eba600c
# Erik Wiens

# The result of the following statement will be an error:

# puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?
# Because you are trying to an integer to a string.

# Possible solution 1: string interpolation
puts "the value of 40 + 2 is #{40 + 2}"

# Possible solution 2: convert integer to string
puts "the value of 40 + 2 is " + (40 + 2).to_s
