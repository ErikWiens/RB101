# https://launchschool.com/lessons/263069da/assignments/86725689
# Erik Wiens

# In the previous practice problem we added Dino to our array like this:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"

# We could have used either Array#concat or Array#push to add Dino to the
# family. How can we add multiple items to our array? (Dino and Hoppy)

# flintstones.concat(["Dino", "Hoppy"])
flintstones += ["Dino", "Hoppy"]
p flintstones