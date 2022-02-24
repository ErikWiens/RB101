# https://launchschool.com/lessons/85376b6d/assignments/a76c28ac
# Erik Wiens

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# remove people with age 100 and greater.

ages.delete_if { |_, age| age >= 100 }
p ages