# https://launchschool.com/lessons/263069da/assignments/6eba600c
# Erik Wiens

# Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator.
# A user passes in two numbers, and the calculator will keep computing the
# sequence until some limit is reached.

# Ben coded up this implementation but complained that as soon as he ran it, he
# got an error. Something about the limit variable. What's wrong with the code?

# A: The variable limit is not accessible from within the scope of the fib method.

# How would you fix this so that it works?

# A: I would move the limit variable inside the fib method definition (or pass the
# limit variable in as an argument when the method is called.)


# limit = 15

def fib(first_num, second_num)
  limit = 15

  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"