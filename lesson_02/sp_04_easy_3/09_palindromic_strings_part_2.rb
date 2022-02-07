# 09_palindromic_strings_part_2.rb
# https://launchschool.com/exercises/8fca300b
# Erik Wiens

# Problem
# Write another method that returns true if the string passed as an argument is
# a palindrome, false otherwise. This time, however, your method should be case-
# insensitive, and it should ignore all non-alphanumeric characters. If you
# wish, you may simplify things by calling the palindrome? method you wrote in
# the previous exercise.

# Code
# Approach 1
# def real_palindrome?(string)
#   alphanumerics = 'abcdefghijklmnopqrstuvwxyz1234567890'
#   array = string.downcase.split('').select { |char| alphanumerics.include?(char) }
#   array == array.reverse
# end

# Approach 2
def real_palindrome?(string)
  str = string.downcase.gsub(/[^a-z0-9]/, '')
  str == str.reverse
end



# Examples / Tests
puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false