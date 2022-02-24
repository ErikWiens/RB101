# https://launchschool.com/books/regex/read/using
# Erik Wiens

# Problem
# Write a method that changes the first arithmetic operator (+, -, *, /) in a
# string to a '?' and returns the resulting string. Don't modify the original
# string.

def mysterious_math(string)
  string.gsub(/[\/*+-]/, '?')
end

# Exercises / Tests
puts mysterious_math('4 + 3 - 5 = 2') == '4 ? 3 ? 5 = 2'
puts mysterious_math('(4 * 3 + 2) / 7 - 1 = 1') == '(4 ? 3 ? 2) ? 7 ? 1 = 1'