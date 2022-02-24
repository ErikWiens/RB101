# def test_1(string)
#   string = "Howdy"
# end

# my_string = "Hi"
# puts my_string
# test_1(my_string)
# puts my_string

# def test_2(string)
#   string[0] = 'x'
# end

# my_other_string = "uh huh"
# puts my_other_string
# test_2(my_other_string)
# puts my_other_string

# a = { a: "ant", b: "bear", c: "cat" }.each_with_index do |pair, index|
#   puts "The index of #{pair} is #{index}."
# end

# puts a

b = { a: "ant", b: "bear", c: "cat" }

puts b

b.each_with_index do |pair, index|
  if pair[1] == 'bear'
    # pair[1] = "polar bear"        # does not mutate b
    # b[pair[0]] = 'polar bear'     # mutates b
    pair[1][0] = 'B'                # mutates b
  end
  puts "The index of #{pair} is #{index}."
end

puts b