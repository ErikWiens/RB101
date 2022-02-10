# https://launchschool.com/lessons/263069da/assignments/643eae16
# Erik Wiens

# To drive that last one home...let's turn the tables and have the string show a
# modified output, while the array thwarts the method's efforts to modify the
# caller's version of it.

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# This time tricky_method_two is called and my_string and my_array are passed in
# as arguments. Looking at the method definition, we can see that a_string_param
# is bound to the string 'pumpkins' that my_string points to outside the method.

# Likewise, an_array_param is bound to the array that my_array points to outside
# the method.

# Inside the method, on Line 9, we can see the use of <<. This is shorthand for
# String#concat, a mutating method. So concat mutates the string that
# a_string_param points to. That string is now "pumpkinsrutabaga"

# On Line 10, we see the use of =. This is the assignment operator. So
# an_array_param is being bound to a different array, in this case
# ['pumpkins', 'rutabaga'].

# So outside the method, my_string is bound to a mutated array,
# "pumpkinsrutabaga" and my_array is still bound to the array ['pumpkins'].

# The output will be:
# My string looks like this now: pumpkinsrutabaga
# My array looks like this now: ['pumpkins']