# 01_searching_101.rb
# https://launchschool.com/exercises/f4f25695
# Erik Wiens

# Problem
# Write a program that solicits 6 numbers from the user, then prints a 
# message that describes whether or not the 6th number appears amongst 
# the first 5 numbers.

# input: 6 numbers - integers?
# output: string (displayed) stating whether 6th number is amongst the first 5

# Question:
# zero?
# negative numbers?
# floats?

# Examples
=begin
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].
=end

# Data Structures
# add first 5 numbers to an array

# Algorithms
# check array for value equal to the sixth number

# Code

def prompt(message)
  puts "==> #{message}"
end

def valid_number?(num)
  num.to_i.to_s == num
end

def ordinal_number(num)
  case num
  when 1
    "1st"
  when 2
    "2nd"
  when 3
    "3rd"
  else
    "#{num}th"
  end
end

def request_number(num)
  loop do
    prompt("Enter the #{ordinal_number(num)} number:")
    number = gets.chomp
    if valid_number?(number)
      return number.to_i
      break
    else
      prompt("Hmm, that doesn't look right.")
    end
  end
end

numbers = []

for i in 1..5 do
  numbers << request_number(i)
end

target_number = nil
loop do
  prompt("Enter the last number:")
  number = gets.chomp
  if valid_number?(number)
    target_number = number.to_i
    break
  else
    prompt("Hmm, that doesn't look right.")
  end
end

if numbers.include?(target_number)
  prompt("The number #{target_number} appears in #{numbers}.")
else
  prompt("The number #{target_number} does not appear in #{numbers}.")
end
