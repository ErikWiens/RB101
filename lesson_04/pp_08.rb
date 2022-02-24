# https://launchschool.com/lessons/85376b6d/assignments/a76c28ac
# Erik Wiens

# What happens when we modify an array while we are iterating over it? What
# would be output by this code?

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end

# 1, 3, nil, nil

# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# 1
# 2