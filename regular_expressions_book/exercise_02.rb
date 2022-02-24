# https://launchschool.com/books/regex/read/using
# Erik Wiens

# Problem
# Write a method that returns all of the fields in a haphazardly formatted
# string. A variety of spaces, tabs, and commas separate the fields, with
# possibly multiple occurrences of each delimiter.

def fields(string)
  string.split(/[, \t]+/)
end

# Examples / Tests
puts fields("Pete,201,Student") == ["Pete", "201", "Student"]
puts fields("Pete \t 201    ,  TA") == ["Pete", "201", "TA"]
puts fields("Pete \t 201") == ["Pete", "201"]
puts fields("Pete \n 201") == ["Pete", "\n", "201"]