# https://launchschool.com/lessons/85376b6d/assignments/a76c28ac
# Erik Wiens

# Given the munsters hash below

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Modify the hash such that each member of the Munster family has an additional
# "age_group" key that has one of three values describing the age group the
# family member is in (kid, adult, or senior). Your solution should produce the
# hash below

# modified = Hash.new
# munsters.each do |name, info|
#   age_group = case info["age"]
#               when 0..17
#                 "kid"
#               when 18..64
#                 "adult"
#               else
#                 "senior"
#               end

#   modified[name] = {
#     "age" => info["age"],
#     "gender" => info["gender"],
#     "age_group" => age_group
#   }
# end

# p modified

munsters.each do |_, details| 
  details["age_group"] = case details["age"]
                         when 0...18
                           "kid"
                         when 18...65
                           "adult"
                         else
                           "senior"
                         end
end

puts munsters