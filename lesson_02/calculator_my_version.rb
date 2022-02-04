# calculator.rb
# https://launchschool.com/lessons/a0f3cd44/assignments/1540db7b
# Erik Wiens

# Build a command line calculator program that does the following:
# - asks for two numbers
# - asks for the type of operation to perform: add, subtract, multiply or divide
# - displays the result
# - Use the Kernel.gets() method to retrieve user input, and use Kernel.puts() method 
#   to display output. Remember that Kernel.gets() includes the newline, so you have to 
#   call chomp() to remove it: Kernel.gets().chomp().

puts 'hello'


def calculate(num1, num2, operation)
  num1 = num1.to_f
  num2 = num2.to_f
  case operation
  when '+'
    result = num1 + num2
  when '-'
    result = num1 - num2
  when '*'
    result = num1 * num2
  when '/'
    result = num1 / num2
  end
  if result.to_i.to_f == result
    result.to_i
  else
    result.truncate(10)
  end
end

class String
  def numeric?
    Float(self) != nil rescue false
  end
end

num1 = nil
loop do
  puts '>> Enter a number:'
  input = gets().chomp()
  if input.numeric?
    num1 = input.to_f
    break
  end
  puts '>> Non-numeric characters are not allowed. Please try again.'
end

operation = ''
loop do
  puts '>> Enter an operation (+, -, *, /):'
  operation = gets().chomp()
  break if operation == '+' || operation == '-' || operation == "*" || operation == '/'
  puts '>> That operation was not recognized. Please try again.'
end

num2 = nil
loop do
  puts '>> Enter a number:'
  input = gets().chomp()
  if input.numeric?
    num2 = input.to_f
    break
  end
  puts '>> Non-numeric characters are not allowed. Please try again.'
end

puts "The result is: #{calculate(num1, num2, operation)}"


# Tests
# puts calculate(6, 2, '+')
# puts calculate(6, 2, '-')
# puts calculate(6, 2, '*')
# puts calculate(6, 2, '/')
# puts calculate(8, 7, '/')
# puts calculate(0, 8, '/')
# puts calculate(8, 0, '/')
# puts calculate('a', 4, '/')