# 10_mutation.rb
# https://launchschool.com/exercises/383b2769
# Erik Wiens

# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

=begin

On Line 7, the right hand side of the assignment operator evaluates to an Array of Strings. 
The assignment operator binds this array to the variable array1. 

On Line 8, an empty array is bound to the variable array2.

On Line 9, the each method is called on array1. A block is passed as an argument 
to the each method. The each method iterates over array1. With each iteration, 

- the element at the respective index is bound to the variable value, and
- the string that value references is bound to a new index at the end of the array

Thus, array2 is mutated.

On Line 10, the each method is called on array1. A block is passed as an argument to 
the each method. The each method iterates over array1. With each iteration,

- the element at the respective index is bound to the variable value, and
- the string that is bound to value is mutated by the upcase! method if that string 
begins with ‘C’ or ‘S’

Thus, array1 is mutated.

On Line 11, array2 is printed to the console. Although the array2 variable points 
to a different array than the array1 variable, if printed, they will both have names 
that begin with ‘C’ or ‘S’ in all-caps. This is because although array1 and array2 
point to different arrays, the indexes in each array point to the same string objects 
at each respective index.

=end