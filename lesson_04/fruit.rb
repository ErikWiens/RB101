# https://launchschool.com/lessons/85376b6d/assignments/ced192be
# Erik Wiens

# Problem
produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(items)
  fruit = Hash.new
  items.each do |key, value|
    fruit[key] = value if value == "Fruit"
  end
  fruit
end

puts select_fruit(produce) == {"apple"=>"Fruit", "pear"=>"Fruit"}