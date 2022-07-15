# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

# Input - an array of integers.
# Output - an array of integers, containing the same number of integers as the input array
# each integer relates to the integer in the same index in the input array
# it represents the number of integers that are smaller than the original num.

# Proposed solution: Iterate over each element of the array. map is more suited for transformation.
# For each element of the array, iterate over every other UNIQUE element of the array.
# There will be a loop within a loop.
# The number in iteration in the outer loop will be compared with every other unique number in the array.
# We compare them with the '>' operator.
# If the outer number is greater than the inner number, we will increment the count by one.
# We will return an array that consists of the 'smaller number count' for each number in the original array.

def smaller_numbers_than_current(array)
  array.map do |num1|
    smaller_num_count = 0
    array.uniq.each do |num2|
      smaller_num_count += 1 if num1 > num2
    end
    smaller_num_count
  end
end

# Examples:

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".