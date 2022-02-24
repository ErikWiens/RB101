# https://launchschool.com/lessons/85376b6d/assignments/ced192be
# Erik Wiens

def multiply(numbers, multiplier)
  updated_numbers = Array.new
  counter = 0
  loop do
    break if counter >= numbers.length
    updated_numbers << numbers[counter] * multiplier
    counter += 1
  end
  updated_numbers
end

p my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]