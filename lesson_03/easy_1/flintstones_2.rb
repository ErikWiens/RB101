# https://launchschool.com/lessons/263069da/assignments/e2593fe1
# Erik Wiens

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3,
                "BamBam" => 4, "Pebbles" => 5 }

# Turn this into an array containing only two elements: Barney's name and
# Barney's number

barneys_array = Array.new
barneys_array << "Barney"
barneys_array << flintstones["Barney"]
p barneys_array