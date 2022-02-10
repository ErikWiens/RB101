# https://launchschool.com/lessons/263069da/assignments/6eba600c
# Erik Wiens

# What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# 34
# On Line 12, the method mess_with_it is called with the variable answer passed
# in as an argument. Looking at the method definition on Line 8, we can see that
# the number that answer is bound to (42) is being assigned to the variable
# some_number. On Line 9, we see some_number being reassigned. += is shorthand.
# Another way of writing Line 9 is some_number = some_number + 8. So the
# righthand side evaluates to 50 and therefore, some_number is reassigned to the
# number 50. some_number is no longer bound to 42. Because Line 9 is the last
# line of the method, it's return value is returned by the method. The value of
# an assignment is returned at assignment so 50 is returned by the method.
# On Line 12, new_answer being assigned the value 50.
# On Line 14, answer - 8, evaluates to 42 - 8 or 34. 34 is printed to the
# console.