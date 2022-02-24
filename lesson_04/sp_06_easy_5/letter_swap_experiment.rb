def swap_first_last_characters(a, b)
  a, b = b, a
end

word = 'Hello'
puts word
swap_first_last_characters(word[0], word[-1])
puts word