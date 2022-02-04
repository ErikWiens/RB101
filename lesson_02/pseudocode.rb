# pseudocode.rb
# https://launchschool.com/lessons/a0f3cd44/assignments/18adce3e
# Erik Wiens

# Write out pseudo-code (both casual and formal) that does the following:

# 1. a method that returns the sum of two integers
# 2. a method that takes an array of strings, and returns a string that is all those 
#    strings concatenated together
# 3. a method that takes an array of integers, and returns a new array with every other 
#    element from the original array, starting with the first element
# 4. a method that determines the index of the 3rd occurrence of a given character in a 
#    string. For instance, if the given character is 'x' and the string is 'axbxcdxex', 
#    the method should return 6 (the index of the 3rd 'x'). If the given character does 
#    not occur at least 3 times, return nil.
# 5. a method that takes two arrays of numbers and returns the result of merging the 
#    arrays. The elements of the first array should become the elements at the even 
#    indexes of the returned array, while the elements of the second array should becocome 
#    the elements at the odd indexes. 

# 1. a method that returns the sum of two integers

# START
# Given an integer a and integer b
# PRINT the sum of a and b
# END

# 2. a method that takes an array of strings, and returns a string that is all those 
#    strings concatenated together

# START
# Given a collection of strings called strings
# SET iterator = 0
# SET new_string = ''
# WHILE iterator < length of strings
#   SET new_string to new_string + value within strings at space 'iterator'
#   iterator = iterator + 1
# PRINT new_string
# END

# 3. a method that takes an array of integers, and returns a new array with every other 
#    element from the original array, starting with the first element

# START
# Given a collection of integers called numbers
# SET iterator = 0
# SET new_collection = []
# WHILE iterator < length of numbers
#   IF iterator % 2 == 0
#     SET new_collection to new_collection + value within numbers at space 'iterator'
# PRINT new_collection
# END

# 4. a method that determines the index of the 3rd occurrence of a given character in a 
#    string. For instance, if the given character is 'x' and the string is 'axbxcdxex', 
#    the method should return 6 (the index of the 3rd 'x'). If the given character does 
#    not occur at least 3 times, return nil.

# START
# Given a string called 'str' and a character called 'char'
# SET iterator to 0
# SET counter to 0
# WHILE iterator < length of str
#   IF character in str at space iterator equals char
#     SET counter to counter + 1
#   IF counter equals 3
#     PRINT iterator
#   SET iterator equal to iterator + 1
# END

# 5. a method that takes two arrays of numbers and returns the result of merging the 
#    arrays. The elements of the first array should become the elements at the even 
#    indexes of the returned array, while the elements of the second array should becoome 
#    the elements at the odd indexes. 

# START 
# Given a collection of numbers called 'even' and a collection of numbers called 'odd'
# SET iterator to 0
# SET new_collection to []
# WHILE iterator < length of even
#   SET new_collection to new_collection plus value in even at space iterator
#   SET new_collection to new_collection plus value in odd at space iterator
# PRINT new_collection
# END