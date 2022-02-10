# https://launchschool.com/lessons/263069da/assignments/a3c602d1
# Erik Wiens

# In other practice problems, we have looked at how the scope of variables
# affects the modification of one "layer" when they are passed to another.

# To drive home the salient aspects of variable scope and modification of one
# scope by another, consider the following similar sets of code.

# What will be printed by each of these code groups?

# A)

# def mess_with_vars(one, two, three)
#   one = two
#   two = three
#   three = one
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"
# puts "two is: #{two}"
# puts "three is: #{three}"

# On Line 24, mess_with_vars is called with 3 strings being passed in as
# arguments.
# 
# Looking at the method definition, we can see that these strings are being
# bound to three parameters one, two and three repectively.
# 
# Next we can see that in the method definition, these variables local to the
# method scope are being reassigned.
#
# This does not impact the variables outside the method though. So, the output
# will be:
# one is: one
# two is: two
# three is: three

# B)

# def mess_with_vars(one, two, three)
#   one = "two"
#   two = "three"
#   three = "one"
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"
# puts "two is: #{two}"
# puts "three is: #{three}"

# Same.

# C)

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# The method is mutating the strings that the variables outside of the method
# point to.

# one is: two
# two is: three
# three is: one