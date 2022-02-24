# https://launchschool.com/exercises/56e92849
# Erik Wiens

# Problem
# Given a string of words separated by spaces, write a method that takes this
# string of words and returns a string in which the first and last letters of
# every word are swapped.

# You may assume that every word contains at least one letter, and that the
# string will always contain at least one word. You may also assume that each
# string contains nothing but words and spaces

# input: string of words separated by spaces
# output: same string but first and last letter of every word swapped

# Data Structure
# array of strings

# Algorithm
# split string into array of words (strings)
# create empty array for modified words
# iterate over original array
# push modified word to new array
# after finished iterating, join array using spaces and return result

# Code
def swap(sentence)
  result = Array.new
  sentence.split.each do |word|
    new_word = word.clone
    new_word[0] = word[word.length-1]
    new_word[word.length-1] = word[0]

    result << new_word
  end
  
  result.join(' ')
end

# Examples / Tests
puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'