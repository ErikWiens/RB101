# https://launchschool.com/exercises/e66bd409
# Erik Wiens

# Problem
# Write a method that takes a string with one or more space separated words and
# returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# input: a string
# output: a hash with integer keys and integer values

# Data Structure: hash

# Algorithm
# create an empty hash
# split string into array of strings
# step through array, 
#   - count number of letters in given word
#   - if that number is not in the hash, add to hash with value of 1
#   - otherwise, increment that key's value by 1
# return hash

# Code
def word_sizes(sentence)
  # create an empty hash
  stats = Hash.new

  # split string into array of strings
  words = sentence.split(' ')

  # step through array, 
  words.each do |word|
    #  count number of letters in given word
    count = word.length
    #  if that number is not in the hash, add to hash with value of 1
    if stats.key?(count)
      stats[count] += 1
    else
      stats[count] = 1
    end
    #  otherwise, increment that key's value by 1
  end
  # return hash
  stats
end


# Examples / Tests
puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}