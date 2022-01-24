# 06_keyword_arguments.rb
# Erik Wiens

# What does this code print?

5.step(to: 10, by: 3) { |value| puts value }

# step belongs to the parent class of Integer, Numeric
# https://docs.ruby-lang.org/en/2.7.0/Numeric.html#method-i-step

# 5
# 8