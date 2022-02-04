# 09_string_assignment.rb
# https://launchschool.com/exercises/a12ef94e
# Erik Wiens

# Problem
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# What does this print out? Can you explain these results?

# On Line 6, the variable 'name' is assigned the value 'Bob'.
# In other words, 'name' points to 'Bob.
# On Line 7, the variable 'save_name' is assigned to the same string as 'name'.
# In other words, it points to the same memory space.
# On Line 8, the string that name points to is mutated.
# In this case, it changed to all caps.
# On Line 9, both name and save_name are printed to the console.
# In this case both will be 'BOB'
# This is because both name and save_name point to the same mutated string.