# https://launchschool.com/books/regex/read/using
# Erik Wiens

# Problem
# Challenge: write a method that changes strings in the date format 2016-06-17
# to the format 17.06.2016. You must use a regular expression and should use
# methods described in this section.

# Approach 1
# def format_date(date)
#   date.split('-').reverse.join('.')
# end

# Approach 2
def format_date(date)
  date.sub(/(\d{4})-(\d{2})-(\d{2})/, '\3.\2.\1')
end

# Examples / Tests
puts format_date('2016-06-17') == '17.06.2016'
puts format_date('2016/06/17') == '2016/06/17'