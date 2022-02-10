# https://launchschool.com/lessons/263069da/assignments/a3c602d1
# Erik Wiens

# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings #  => "hi there"