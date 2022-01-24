# 04_mandatory_blocks.rb
# Erik Wiens

=begin
The Array#bsearch method is used to search ordered Arrays more quickly 
than #find and #select can. Assume you have the following code:
=end

a = [1, 4, 8, 11, 15, 19]

# How would you search this Array to find the first element whose value exceeds 8?

# https://docs.ruby-lang.org/en/2.7.0/Array.html#method-i-bsearch

puts a.bsearch { |num| num > 8 }