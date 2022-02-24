# https://launchschool.com/exercises/864acdb4
# Erik Wiens

# Problem
# The time of day can be represented as the number of minutes before or after
# midnight. If the number of minutes is positive, the time is after midnight. If
# the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns
# the time of day in 24 hour format (hh:mm). Your method should work with any
# integer input.

# You may not use ruby's Date and Time classes.

# input: positive or negative integer
# output: a string representing the time in 24 hour format (hh:mm)

# Data Structures & Algorithms

# Positive Numbers
# hours equals minutes divided by 60 minutes per hour
# minutes equals the remainder

# Negative numbers
# First convert negative number to positive number by subtracting its absolute
# value from the number of minutes in a day, then proceed as with positive
# numbers

# Code
# def time_of_day(minutes)
#   while minutes < 0
#     minutes_in_a_day = 60 * 24
#     minutes += minutes_in_a_day 
#   end

#   hours, minutes = minutes.divmod(60)
  
#   if hours >= 24
#     hours = hours / 24
#   end

#   "#{sprintf('%02d', hours)}:#{sprintf('%02d', minutes)}"
# end

# Further Exploration Problem 1
# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def normalize_minutes_to_0_through_1439(minutes)
#   # while minutes < 0
#   #   minutes += MINUTES_PER_DAY
#   # end

#   # minutes % MINUTES_PER_DAY
#   minutes % MINUTES_PER_DAY
# end

# def time_of_day(delta_minutes)
#   delta_minutes = normalize_minutes_to_0_through_1439(delta_minutes)
#   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end

# Further Exploration Problem 2
# How would you approach this problem if you were allowed to use ruby's Date and Time classes?

# def time_of_day(minutes)
#   time = Time.new(2022)
#   time += (minutes * 60)
#   time.strftime "%H:%M"
# end

# Further Exploration Problem 3
# How would you approach this problem if you were allowed to use ruby's Date and
# Time classes and wanted to consider the day of week in your calculation?
# (Assume that delta_minutes is the number of minutes before or after midnight
# between Saturday and Sunday; in such a method, a delta_minutes value of -4231
# would need to produce a return value of Thursday 01:29.)

def time_of_day(minutes)
  time = Time.new(2022, 1, 2) # first Sunday of the year
  time += (minutes * 60)
  time.strftime "%A %H:%M"
end

# Examples / Tests
# puts time_of_day(0) == "00:00"
# puts time_of_day(-3) == "23:57"
# puts time_of_day(35) == "00:35"
# puts time_of_day(-1437) == "00:03"
# puts time_of_day(3000) == "02:00"
# puts time_of_day(800) == "13:20"
# puts time_of_day(-4231) == "01:29"
puts time_of_day(-4231) == "Thursday 01:29"