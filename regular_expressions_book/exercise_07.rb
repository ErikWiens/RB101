# https://launchschool.com/books/regex/read/using
# Erik Wiens

# Problem
# Challenge: write a method that changes dates in the format 2016-06-17 or
# 2016/06/17 to the format 17.06.2016. You must use a regular expression and
# should use methods described in this section.

def format_date(date)
  date.sub(/^(\d{4})([-\/])(\d{2})\2(\d{2})$/, '\4.\3.\1')
end

# Examples / Tests
puts format_date('2016-06-17') == '17.06.2016'
puts format_date('2017/05/03') == '03.05.2017'
puts format_date('2015/01-31') == '2015/01-31' # no change