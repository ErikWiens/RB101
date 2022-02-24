# https://launchschool.com/books/regex/read/using
# Erik Wiens

# Problem
# Write a method that changes the first occurrence of the word apple, blueberry,
# or cherry in a string to danish.

def danish(text)
  text.sub(/\b(apple|blueberry|cherry)\b/, 'danish')
end

# Examples / Tests
puts danish('An apple a day keeps the doctor away') == 'An danish a day keeps the doctor away'
puts danish('My favorite is blueberry pie') == 'My favorite is danish pie'
puts danish('The cherry of my eye') == 'The danish of my eye'
puts danish('apple. cherry. blueberry.') == 'danish. cherry. blueberry.'
puts danish('I love pineapple') == 'I love pineapple'