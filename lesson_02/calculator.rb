# calculator.rb
# https://launchschool.com/lessons/a0f3cd44/assignments/1540db7b
# Erik Wiens

# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = Kernel.gets()
# Kernel.puts(answer)

# require "pry"

require 'yaml'    # Bonus #4: Extracting messages in the program to a configuration file.
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'   # switch to 'es' for Spanish

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  # num.to_i() != 0
  num.to_i.to_s == num            # Bonus #1: better integer validation
end

def number?(input)                      # Bonus #2: verify valid numbers includin floats
  integer?(input) || float?(input)
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)                  
  num.to_f.to_s == num
end

def operation_to_message(op)
  message = case op
            when '1'
              message = 'Adding'
            when '2'
              message = 'Subtracting'
            when '3'
              message = 'Multiplying'
            when '4'
              message = 'Dividing'
            end
  
  x = "A random line of code"     # Bonus #3: What if we needed to add some code after the case statement within the method? 
  message
end

def messages(message)
  MESSAGES[LANGUAGE][message]
end

prompt(messages('welcome'))
name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(messages('valid_name'))
  else
    break
  end
end

prompt(messages('greeting') % { :name => name })

loop do # main loop
  number1 = ''
  loop do
    prompt(messages('number_1'))
    number1 = Kernel.gets().chomp()

    if number?(number1)
      break
    else
      prompt(messages('valid_number'))
    end
  end

  number2 = ''
  loop do
    prompt(messages('number_2'))
    number2 = Kernel.gets().chomp()

    if number?(number2)
      break
    else
      prompt(messages('valid_number'))
    end
  end

  # operator_prompt = <<-MSG
  # What operation would you like to perform? 
  # 1) add 
  # 2) subtract
  # 3) multiply 
  # 4) divide
  # MSG

  # prompt(operator_prompt)

  prompt(messages('operator'))

  operator = ''
  loop do
    operator = Kernel.gets.chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('valid_operator'))
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_f() + number2.to_f()
           when '2'
             number1.to_f() - number2.to_f()
           when '3'
             number1.to_f() * number2.to_f()
           when '4'
             number1.to_f() / number2.to_f()
           end

  # prompt "The result is #{result}" # Q5: removing some parentheses


  prompt(messages('result') % { :result => result}) 
  # https://stackoverflow.com/questions/4150782/use-yaml-with-variables

  # binding.pry # Debugging https://launchschool.com/lessons/a0f3cd44/assignments/e742d62a

  prompt(messages('calculate_again'))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(messages('thank_you'))

=begin
  
Things to think about:

1. Is there a better way to validate that the user has input a number? 
   We'll cover this in more detail in a future assignment.

   Maybe (original.to_i.to_s == original) ?

2. It looks like you can call to_i or to_f to convert strings to integers 
   and floats, respectively. Look up the String#to_i and String#to_f documentation in Ruby docs 
   and look at their various examples and use cases.

   - Both ignore extra characters after a valid number
   - to_f can work with exponents
   - to_i can convert from different bases to base10

3. Our operation_to_message method is a little dangerous, because we're 
   relying on the case statement being the last expression in the method. 
   What if we needed to add some code after the case statement within the method? 
   What changes would be needed to keep the method working with the rest of the 
   program? We'll show a solution in an upcoming assignment.

   - set it to a variable and return the variable after the case statement

4. Most Rubyists don't invoke methods with parentheses, unless they're passing in 
   an argument. For example, we use name.empty?(), but most Rubyists would write name.empty?. 
   Some Rubyists even go as far as not putting parentheses around method calls even when 
   passing in arguments. For example, they would write prompt "hi there" as opposed to 
   prompt("hi there").

   Yikes.

   Try removing some of the optional parentheses when calling methods to get your eyes 
   acquainted with reading different styles of Ruby code. This will be especially useful 
   if you are using a DSL written in Ruby, like Rspec or Rails.

   See Line 107.

5. We're using Kernel.puts() and Kernel.gets(). But the Kernel. is extraneous as well 
   as the parentheses. Therefore, we can just call those methods by gets and puts. 
   We already know that in Ruby we can omit the parentheses, but how come we can also omit 
   the Kernel.?

   From the docs (https://docs.ruby-lang.org/en/2.7.0/Kernel.html):
   The Kernel module is included by class Object, so its methods are available in every 
   Ruby object.

6. There are lots of messages sprinkled throughout the program. Could we move them 
   into some configuration file and access by key? This would allow us to manage the 
   messages much easier, and we could even internationalize the messages. This is just 
   a thought experiment, and no need to code this up.

   Use a Hash.

=end
