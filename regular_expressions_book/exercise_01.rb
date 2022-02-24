# https://launchschool.com/books/regex/read/using
# Erik Wiens

# Problem
# Write a method that returns true if its argument looks like a URL, false if it
# does not.

def url?(string)
  string.match?(/^https?:\/\/\S*$/)
end

# Examples / Tests
puts url?('http://launchschool.com') == true
puts url?('https://example.com') == true
puts url?('https://example.com hello') == false
puts url?('   https://example.com') == false