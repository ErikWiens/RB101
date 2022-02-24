# https://launchschool.com/lessons/85376b6d/assignments/a76c28ac
# Erik Wiens

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"

puts flintstones.index { |name| name.start_with?('Be') }

