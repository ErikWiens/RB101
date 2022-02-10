# https://launchschool.com/lessons/263069da/assignments/a3c602d1
# Erik Wiens

# What do you expect to happen when the greeting variable is referenced in the
# last line of the code below?

if false
  greeting = "hello world"
end

greeting

# Error, couldn't find the variable.
# Whoops! I was wrong! 
# "when you initialize a local variable within an if block, even if that if 
# block doesn’t get executed, the local variable is initialized to nil.""
