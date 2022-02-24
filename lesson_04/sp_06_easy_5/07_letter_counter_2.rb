# https://launchschool.com/exercises/16124e4d
# Erik Wiens

# Problem
# Modify the word_sizes method from the previous exercise to exclude non-letters
# when determining word size. For instance, the length of "it's" is 3, not 4.

def word_sizes(sentence)
  # create an empty hash
  stats = Hash.new

  # split string into array of strings
  words = sentence.split(' ')

  # step through array, removing non-alphabetic characters from each word
  modified_words = words.map do |word|
    word.delete('^abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ')
  end

  # step through array, 
  modified_words.each do |word|
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
puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
