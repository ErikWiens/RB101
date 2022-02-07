# 02_arithmetic_integer.rb
# https://launchschool.com/exercises/b161d835
# Erik Wiens

# Problem
# Write a program that prompts the user for two positive integers, 
# and then prints the results of the following operations on those 
# two numbers: addition, subtraction, product, quotient, remainder, 
# and power. Do not worry about validating the input.

# input: 
# - 2 positive integers

# output:
# - display strings representing each arithmetic expression and answer

# Examples
=begin
==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103
=end

# Data Structure
# intermediate ds is an integer representing the answer

# Algorithm

# Code
def prompt(message) 
  puts "==> #{message}"
end

prompt("Enter the first number:")
num1 = gets.chomp.to_f

prompt("Enter the second number:")
num2 = gets.chomp.to_f

sum = num1 + num2
prompt("#{num1} + #{num2} = #{sum}")

difference = num1 - num2
prompt("#{num1} - #{num2} = #{difference}")

product = num1 * num2
prompt("#{num1} * #{num2} = #{product}")

quotient = num1 / num2
prompt("#{num1} / #{num2} = #{quotient}")

remainder = num1 % num2
prompt("#{num1} % #{num2} = #{remainder}")

power = num1 ** num2
prompt("#{num1} ** #{num2} = #{power}")


