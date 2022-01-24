# 05_multiple_signatures.rb
# Erik Wiens

#What do each of these puts statements output?

a = %w(a b c d e)
puts a.fetch(7)                           # IndexError
puts a.fetch(7, 'beats me')               # "Beats me"
puts a.fetch(7) { |index| index**2 }      # 49

# https://docs.ruby-lang.org/en/master/doc/syntax/literals_rdoc.html#label-25w+and+-25W-3A+String-Array+Literals
# %w creates an array of strings

# Array#fetch 
# https://docs.ruby-lang.org/en/2.7.0/Array.html#method-i-fetch
# returns an object given an index
# takes an optional argument that is returned if the index provided doesn't exist
# alterntively, if a block is given, it will only be executed if an invalid index is referenced