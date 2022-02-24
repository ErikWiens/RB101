# https://launchschool.com/lessons/85376b6d/assignments/a76c28ac
# Erik Wiens

# Create a hash that expresses the frequency with which each letter occurs in
# this string:

statement = "The Flintstones Rock"

frequency = Hash.new(0)
statement.each_char { |char| frequency[char] += 1 }

p frequency