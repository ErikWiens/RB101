# mortgage.rb
# https://launchschool.com/lessons/a0f3cd44/assignments/4ad62c1d
# Erik Wiens

# You'll need three pieces of information:
# 1. the loan amount
# 2. the Annual Percentage Rate (APR)
# 3. the loan duration

# From the above, you'll need to calculate the following things:
# - monthly interest rate
# - loan duration in months
# - monthly payment

# require "pry"

def prompt(message)
  puts ">> #{message}"
end

def number?(input)
  integer?(input) || float?(input)
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

loop do
  loan_amount = ''
  loop do
    prompt("Please enter the loan amount ($):")
    loan_amount = gets.chomp
    break if number?(loan_amount)
    prompt("Hmm... that doesn't look like a valid number")
  end

  apr = ''
  loop do
    prompt(
      "Please enter your mortgage's Annual "\
      "Percentage Rate (APR) e.g. 3.5:"
    )
    apr = gets.chomp
    break if number?(apr)
    prompt("Hmm... that doesn't look like a valid number")
  end

  loan_duration_years = ''
  loop do
    prompt("Please enter the loan duration (years):")
    loan_duration_years = gets.chomp
    break if number?(loan_duration_years)
    prompt("Hmm... that doesn't look like a valid number")
  end

  apr_decimal = apr.to_f / 100
  # monthly_rate = ((1.0 + apr_decimal)**(1.0/12)) - 1.0
  monthly_rate = apr_decimal / 12
  loan_duration_months = loan_duration_years.to_f * 12

  monthly_payment = loan_amount.to_f * (monthly_rate / (1 -
                    (1 + monthly_rate)**(-loan_duration_months)))

  prompt("Calculating your monthly payment...")
  # binding.pry # Debugging https://launchschool.com/lessons/a0f3cd44/assignments/e742d62a
  prompt("Your monthly payment is: $#{format('%.2f', monthly_payment)} " \
         "for a $#{loan_amount} loan for #{loan_duration_years} years at " \
         "#{apr}% APR.")

  prompt("Would you like to perform another calculation? " \
         "(Y to calculate again)")
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end

prompt("Thank you for using Mortgage Calculator! Good bye!")
