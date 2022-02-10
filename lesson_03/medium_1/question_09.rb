# https://launchschool.com/lessons/263069da/assignments/6eba600c
# Erik Wiens

# Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?

bar(foo)

# The bar method is invoked while passing the method foo as an argument, so
# to determine what bar will return, we first need to determine what foo will
# return. 

# On Line 7 we can see that food will return the string "yes".

# So on Line 16, bar is being called, and "yes" is being passed as its only
# argument. So param is bound to the string "yes". In the method definition, on
# Line 11, we can see that param does not equal no so "no" is returned by the
# bar method.