# 07_parent_class.rb
# Erik Wiens

s = 'abc'
# puts s.public_methods.inspect

=begin
How would you modify this code to print just the public methods that are 
defined or overridden by the String class? That is, the list should exclude 
all members that are only defined in Object, BasicObject, and Kernel.
=end

# https://docs.ruby-lang.org/en/2.7.0/Object.html#method-i-public_methods
puts s.public_methods(false).inspect