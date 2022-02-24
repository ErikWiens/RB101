# https://launchschool.com/lessons/85376b6d/assignments/ced192be
# Erik Wiens

def double_numbers!(numbers)
  counter = 0
  loop do
    numbers[counter] *= 2
    counter += 1
    break if counter >= numbers.length
  end
end

my_numbers = [1, 4, 3, 7, 2, 6]
p my_numbers
double_numbers!(my_numbers) # => [2, 8, 6, 14, 4, 12]
p my_numbers