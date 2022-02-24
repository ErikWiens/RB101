# https://launchschool.com/lessons/85376b6d/assignments/a76c28ac
# Erik Wiens

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, 
         "Marilyn" => 22, "Spot" => 237 }

# Add up all of the ages from the Munster family hash:

sum_of_ages = ages.reduce(0) { |sum, (_, age)| sum + age }
# sum_of_ages = ages.values.reduce {|sum, age| sum + age }
puts sum_of_ages
