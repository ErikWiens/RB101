# https://launchschool.com/lessons/263069da/assignments/86725689
# Erik Wiens

advice = "Few things in life are as important as house training your pet dinosaur."

# Review the String#slice! documentation, and use that method to make the return
# value "Few things in life are as important as ". But leave the advice variable
# as "house training your pet dinosaur.".

# deleted = advice.slice!("Few things in life are as important as ")
# puts advice
# puts deleted

# As a bonus, what happens if you use the String#slice method instead?

deleted = advice.slice("Few things in life are as important as ")
puts advice
puts deleted