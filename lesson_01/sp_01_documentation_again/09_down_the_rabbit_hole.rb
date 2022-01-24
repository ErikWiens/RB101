# 09_down_the_rabbit_hole.rb
# Erik Wiens

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

# Find the documentation for YAML::load_file.
# https://docs.ruby-lang.org/en/2.3.0/Psych.html#method-c-load_file

# load_file(filename, fallback = false)
# Load the document contained in filename. 
# Returns the yaml contained in filename as a Ruby object, or 
# if the file is empty, it returns the specified default return value, 
# which defaults to an empty Hash