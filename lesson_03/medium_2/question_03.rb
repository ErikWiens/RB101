# https://launchschool.com/lessons/263069da/assignments/643eae16
# Erik Wiens

# Let's call a method, and pass both a string and an array as arguments and see
# how even though they are treated in the same way by Ruby, the results can be
# different.

# Study the following code and state what will be displayed...and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# On Line 17 we call treicky_method and pass in two arguments: my_string and
# my_array. So looking at the method definition, we can see that a_string_param
# is bound to the string 'pumpkins' and an_array_param is bound to my_array
# Next on Line 11, we see some shorthand. Line 11 can be re-written as 
# a_string_param = a_string_param + "rutabaga"

# The righthand side evaluates to "pumpkins rutabaga" and a_string_param is
# bound to this new string. It is no longer bound to "pumpkins"

# On Line 12, we see some more shorthand. This line can be rewritten as
# an_array_param.push("rutabaga"

# So a new index is created in the array (1) and that index is bound to the
# string "rutabaga". The array that an_array_param points to has been mutated.

# The output of this file will be:
# My string looks like this now: pumpkins
# My array looks like this now: [pumpkins, rutabagas]