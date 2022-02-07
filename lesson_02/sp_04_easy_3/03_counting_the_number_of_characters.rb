# 03_counting_the_number_of_characters.rb
# https://launchschool.com/exercises/f85563ae
# Erik Wiens

# Problem
# Write a program that will ask a user for an input of a word 
# or multiple words and give back the number of characters. Spaces 
# should not be counted as a character.

# Question: punctuation? count it

# Examples
# Please write word or multiple words: walk
# There are 4 characters in "walk".

# Please write word or multiple words: walk, don't run
# There are 13 characters in "walk, don't run".

def prompt(message)
  puts ">> #{message}"
end

prompt("Please write a word or multiple words:")
string = gets.chomp
count = string.split(' ').join('').length

prompt("There are #{count} characters in \"#{string}\".")