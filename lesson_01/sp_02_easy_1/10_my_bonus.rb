# 10_my_bonus.rb
# https://launchschool.com/exercises/ff309c91
# Erik Wiens

# Write a method that takes two arguments, a positive integer and a boolean, and 
# calculates the bonus for a given salary. If the boolean is true, the bonus should 
# be half of the salary. If the boolean is false, the bonus should be 0.

# input: (1) positive integer, and (2) a boolean
# output: integer

# Approach 1: if statement
# def calculate_bonus(salary, bonus)
#   if bonus 
#     salary / 2
#   else
#     0
#   end
# end

# Approach 2: ternary statement
def calculate_bonus(salary, bonus)
  bonus ? salary / 2 : 0
end

# Tests
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000