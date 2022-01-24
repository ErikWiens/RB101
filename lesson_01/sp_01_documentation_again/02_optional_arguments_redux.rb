# 02_optional_arguments_redix.rb

# Assume you have the following code:
# What will each of the 4 puts statements print?

require 'date'

puts Date.civil
# Based on the docs, https://docs.ruby-lang.org/en/2.7.0/Date.html#method-c-civil
# Civil is a class method of the class Date. 
# Because no arguments are provided in the method call, it's going to return 
# a date object with the default parameters (year: -4712, month: 1, day: 1).
# puts will print that object as a string using .to_s
# -4712-01-01

puts Date.civil(2016) # 2016-01-01
puts Date.civil(2016, 5) # 2016-05-01
puts Date.civil(2016, 5, 13) # 2016-05-13