# https://launchschool.com/lessons/263069da/assignments/6eba600c
# Erik Wiens

# One day Spot was playing with the Munster family's home computer and he wrote
# a small program to mess with their demographic data:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

# After writing this method, he typed the following...and before Grandpa could
# stop him, he hit the Enter key with his tail:

mess_with_demographics(munsters)
p munsters

# Did the family's data get ransacked? Why or why not?

# Yes. 'munsters' and 'demo_hash' point to the same object_id.
# mess_with_demographics mutates the hash that demo_hash points to.
# Although Lines 17 and 18 are assignment, they are reassigning the values that
# the keys point to. 'munsters' still points to the hash that 'demo_hash' points
# to.