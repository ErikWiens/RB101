# 03_default_args.rb
# Erik Wiens

# Use the ruby documentation to determine what this code will print.

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# https://docs.ruby-lang.org/en/2.7.0/Kernel.html#method-i-p
# According to the docs, p is an instance method of the kernel module.

#   "For each object, directly writes obj.inspect followed by a newline to the 
#   program’s standard output."

# We are calling p with a single argument, an array of integers.
# So what does inspect return when it's called on an instance of an array?

# https://docs.ruby-lang.org/en/2.7.0/Array.html#method-i-inspect
# inspect creates a string representation by calling inspect on each object

# But how will the 3 arguments be allocated to the 4 parameters?
# https://docs.ruby-lang.org/en/master/doc/syntax/calling_methods_rdoc.html#label-Default+Positional+Arguments

# Answer: [4, 5, 3, 6]