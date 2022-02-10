# https://launchschool.com/lessons/263069da/assignments/6eba600c
# Erik Wiens

# Method calls can take expressions as arguments. Suppose we define a method
# called rps as follows, which follows the classic rules of rock-paper-scissors
# game: it returns the winning fist or, in the case of a tie, the fist that both
# players played.

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

# What is the result of the following call?

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# There are 4 nested calls to the rps method.
# rps('rock', 'paper') evaluates to 'paper'.
# rps('rock', 'scissors') evaluates to 'rock'.
# These values become arguments to the enclosing rps method call.
# 'paper' is the return value of this method call.
# The outermost method call therefore passes 'paper' and 'rock'. The return
# value of this final method call is 'paper'.