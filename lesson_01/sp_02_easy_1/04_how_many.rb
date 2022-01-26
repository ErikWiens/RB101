# 04_how_many.rb
# https://launchschool.com/exercises/d5c51b39
# Erik Wiens

# Write a method that counts the number of occurrences of each element in a given array.

# Takes an array of objects (can it be mixed?), Returns a hash. Every element
# in the array is a key in the hash. The value of each key is the number of occurences of
# that element. 

vehicles = [
  'car', 'cAr', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  hash = Hash.new

  array.each do |element|
    element.downcase!           # Further Exploration: make case insensitive
    if hash.include?(element)
      hash[element] += 1
    else
      hash[element] = 1
    end
  end
  
  hash.each { |k, v| puts "#{k} => #{v}" }
end

count_occurrences(vehicles)