# https://launchschool.com/exercises/34f92353
# Erik Wiens

# Problem
# As seen in the previous exercise, the time of day can be represented as the
# number of minutes before or after midnight. If the number of minutes is
# positive, the time is after midnight. If the number of minutes is negative,
# the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return
# the number of minutes before and after midnight, respectively. Both methods
# should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24

# def after_midnight(string)
#   # input: string representing time
#   # split string into hours and minutes
#   hours, minutes = string.split(':')
#   hours = hours.to_i
#   minutes = minutes.to_i
#   # calculate minutes since midnight
#   minutes_after_midnight = (hours * 60) + minutes
#   # output: integer representing minutes after midnight
#   # puts minutes_after_midnight
#   minutes_after_midnight %= HOURS_PER_DAY * MINUTES_PER_HOUR
# end

# def before_midnight(string)
#   minutes_before_midnight = HOURS_PER_DAY * MINUTES_PER_HOUR - after_midnight(string)
#   minutes_before_midnight %= HOURS_PER_DAY * MINUTES_PER_HOUR
# end

# Further Exploration
# How would these methods change if you were allowed to use the Date and Time
# classes?
require 'time'

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24

def after_midnight(string)
  time = Time.strptime(string, "%H:%M")
  time.hour * 60 + time.min
end

def before_midnight(string)
  time = Time.strptime(string, "%H:%M")
  minutes_before_midnight = HOURS_PER_DAY * MINUTES_PER_HOUR - (time.hour * 60 + time.min)
  minutes_before_midnight %= (HOURS_PER_DAY * MINUTES_PER_HOUR)
end

# Examples / Tests
puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0