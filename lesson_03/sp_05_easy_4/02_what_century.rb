# https://launchschool.com/exercises/d6a8f167
# Erik Wiens

# Problem
# Write a method that takes a year as input and returns the century. The return
# value should be a string that begins with the century number, and ends with
# st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000
# comprise the 20th century.

# Algorithm
# split last two digits from number
# century equals 

# Code
# def ending(num)
#   last_two_digits = num % 100
#   last_digit = num % 10
#   case 
#   when last_two_digits == 11
#     "th"
#   when last_two_digits == 12
#     "th"
#   when last_two_digits == 13
#     "th"
#   when last_digit == 1
#     "st"
#   when last_digit == 2
#     "nd"
#   when last_digit == 3
#     "rd"
#   else
#     "th"
#   end
# end

def ending(num)
  return "th" if [11, 12, 13].include?(num % 100)
  
  last_digit = num % 10
  
  case last_digit
  when 1 then "st"
  when 2 then "nd"
  when 3 then "rd"
  else "th"
  end
end

def century(year)
  century = year / 100
  if year % 100 > 0
    century += 1
  end
  "#{century}#{ending(century)}"
end

# Examples / Tests
puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'