# 09_sum_of_digits.rb
# https://launchschool.com/exercises/0049ac13
# Erik Wiens

# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# input: a positive integer
# output: integer (sum of digits)

# Approach 1: using string
# def sum(num)
#   num.to_s.split('').reduce(0) { |sum, n| sum + n.to_i }
# end

# Approach 2: using math
# def sum(num)
#   total = 0
#   while num > 0
#     num, r = num.divmod(10)
#     total += r
#   end
#   return total
# end

# Approach 3: using recursion
def sum(num)
  return 0 if num == 0
  num.remainder(10) + sum(num / 10)
end

# Tests
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45