=begin
# What is PEDAC?
- Structured problem solving approach for programming problems
- Stands for:
  - P - Understanding the Problem
  - E - Examples and Test Cases
  - D - Data Structures
  - A - Algorithm
  - C - Implementing a Solution in Code


# What are its benefits?
- Helps you to be better in solving problems
  - Failure to meet requirements of the problem
  - Failure to handle edge cases appropriately
  - Failure to communicate your thought process

# FAQ
- What if I don't need PEDAC?
  - Easier problems may be able to be solved without PEDAC
  - Harder problems will require a structured approach
- Can I modify the PEDAC template?
  - Ultimately used to help you solve the problem
=end


# Given a list (e.g., [1,2,3,1,2,1,2,3]) and number (N) (e.g., 2), create a new list that contains each number of the list at most N times.

=begin
# PROBLEM
- input: array, integer
- output: new array
- rules:
  - new array (don't mutate the input array)
  - each number in the array can only be there N times
- questions:
  - what is the boundaries of N? A: lower bound of 1. A: upper bound is 5: 
  - what is the order of the output array? A: original order

input list: [1,2,3,1,2,1,2,3]
number: 2

p delete_nth([1,2,3,1,2,1,2,3],2) == [1,2,3,1,2,3]
p delete_nth([20,37,20,21], 1) == [20,37,21]
p delete_nth([1,1,3,3,7,2,2,2,2], 3) == [1,1,3,3,7,2,2,2]
p delete_nth([1,2,3,1,1,2,1,2,3,3,2,4,5,3,1],3) == [1,2,3,1,1,2,2,3,3,4,5]
p delete_nth([1,1,1,1,1], 5) == [1,1,1,1,1]
p delete_nth([5,4,3,2,1,1,1,1,1,1,2,3,4,5], 5) == [5,4,3,2,1,1,1,1,1,2,3,4,5]


# DATA STRUCTURES
- input: array, integer
- intermed: Hash
- output: array

# SCRATCHPAD
What do I need to iterate over? Do I need multiple iterations?
* iterate over the input array
What kind of information do I need perform the necessary task at the iteration?
* the number of times we've seen that number in past steps (Hash)
Think about the logic of the problem as computer-like as possible
* past appearances > N times: skip
* all other cases: add it

# David
1.Create an empty hash to store key value pairs. The keys being the integer that appears in the original array
    and the value being how many appearances that integer has come up in the array
  2. Iterate through the original array and count the number of times using the count method
  3. Will need to create a nested iteration to save the number of appearances

# Jack

# - initiate a new empty hash
# - initiate a new empty result array
# - iterate through each integer of the input array
# - add each integer to the hash as a key, with each value representing count in the original array
# - if the hash value is less than n, add the key to the result array
# - return the result array

def delete_nth(arr, n)
  intermediate_hash = {}
  result = []
  arr.each do |num|
    intermediate_hash[num] += 1
    if intermediate_hash[num] <= n
      result << num
    end
  end

  result
end

# Dom
SCRATCH:

Input:    Array, N
Intermed: New_Array & Hash
Output:   New_Array

Initialize an empty Hash to keep track of count

Iterate over the Array that was passed into method

  As we iterate, we count it and add that value to the hash
    When we iterate and count, we << value to New_Array

  If the value in hash is greater than N
    Skip element in iteration
End iteration

Return New_array

# Timothy
- take an array as an argument 
- creat array
- create hash
- iterate over the given array
  - put integer as key and how many time it occurs in value in new hash
- iterate over hash 
  - if value is less than n add to new array
=end



# Erik
# - ex: [1,2,3,1,2,1,2,3], 2
# - create new array []
# - create new hash (keys represent elements, values are occurences in the intermediate array), use default value of 0 {1: 1, 2: 2}
# - step through the input array
# - at each iteration add element to hash or increment if already exists
# - if hash value for the given element is less than or equal to N, add that element to the intermediate array (else skip)
# - once finished stepping through input array, return the intermediate array

def delete_nth(array, n)
  result = []
  count = {}
  
  array.select do |element|
    count[element] += 1
    count[element] <= n
  end
  
  array
end

# p delete_nth([1,2,3,1,2,1,2,3],2) == [1,2,3,1,2,3]
# p delete_nth([20,37,20,21], 1) == [20,37,21]
# p delete_nth([1,1,3,3,7,2,2,2,2], 3) == [1,1,3,3,7,2,2,2]
# p delete_nth([1,2,3,1,1,2,1,2,3,3,2,4,5,3,1],3) == [1,2,3,1,1,2,2,3,3,4,5]
# p delete_nth([1,1,1,1,1], 5) == [1,1,1,1,1]
# p delete_nth([5,4,3,2,1,1,1,1,1,1,2,3,4,5], 5) == [5,4,3,2,1,1,1,1,1,2,3,4,5]

count = Hash.new(0)

count['element'] += 1



