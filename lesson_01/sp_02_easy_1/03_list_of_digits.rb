# 03_list_of_digits.rb
# https://launchschool.com/exercises/30e147eb
# Erik Wiens

# Write a method that takes one argument, a positive integer, and returns a list of the 
# digits in the number.

# convert to string approach
# def digit_list(num)
#   p num.to_s.split('').map { |str| str.to_i }
# end

# mathematical approach
# def digit_list(num)
#   arr = []
#   loop do 
#     num, remainder = num.divmod(10)
#     arr << remainder
#     break if num == 0
#   end
#   p arr.reverse
# end

# recursive approach
def digit_list(num)
  return [] if num == 0
  return digit_list(num / 10) << num % 10
end


puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true