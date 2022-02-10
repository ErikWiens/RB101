# https://launchschool.com/lessons/263069da/assignments/643eae16
# Erik Wiens

# How could the following method be simplified without changing its return
# value?

# def color_valid(color)
#   if color == "blue" || color == "green"
#     true
#   else
#     false
#   end
# end

def color_valid(color)
  color == "blue" || color == "green"
end

puts color_valid("green")