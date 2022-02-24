# https://launchschool.com/lessons/85376b6d/assignments/a76c28ac
# Erik Wiens

# Amend this array so that the names are all shortened to just the first three
# characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! { |name| name[0..2] }

p flintstones