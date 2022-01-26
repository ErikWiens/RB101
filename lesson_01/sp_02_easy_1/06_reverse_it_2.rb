# 06_reverse_it_2.rb
# https://launchschool.com/exercises/b415a65e
# Erik Wiens

=begin
Write a method that takes one argument, a string containing one or more words, 
and returns the given string with words that contain five or more characters reversed. 
Each string will consist of only letters and spaces. Spaces should be included only 
when more than one word is present.
=end

# input: one string argument containing one or more words
# output: the given string but with words that contain 5 or more characters reversed

def reverse_words(string)
  string.split.map { |word| word.length >= 5 ? word.reverse : word }.join(' ')
end

# Tests
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS