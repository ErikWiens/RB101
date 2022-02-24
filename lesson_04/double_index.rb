# https://launchschool.com/lessons/85376b6d/assignments/ced192be
# Erik Wiens

my_numbers = [1, 4, 3, 7, 2, 6]

def double_odd_index(numbers)
  updated_numbers = Array.new
  counter = 0
  loop do
    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    updated_numbers << current_number
    counter += 1
    break if counter >= numbers.length
  end
  updated_numbers
end

p my_numbers
p double_odd_index(my_numbers)
