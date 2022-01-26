# 05_reverse_it.rb
# https://launchschool.com/exercises/51e98567
# Erik Wiens

# Write a method that takes one argument, a string, and returns a new string 
# with the words in reverse order.

# Approach 1: with reverse
def reverse_sentence(sentence)
  sentence.split(' ').reverse.join(' ')
end

# Approach 2: without reverse
def reverse_sentence(string)
  arr = string.split(' ')
  new_arr = []
  while arr.length > 0
    new_arr << arr.pop
  end
  return new_arr.join(' ')
end

# Tests
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''