# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

# Input: an ordered array of integers

# Output: the minimum sum of 5 consecutive numbers in the array
# Consecutive is with reference to the order of the numbers as they are presented in the array.

# Proposed approach:
# Return nil if the size of the array is less than 5.
# Iterate over each element of the array until we cannot do so anymore.
# --> We stop once we find that the slice contains less than 5 numbers.
# Initialize a variable called min_sum.
# This variable will be updated everytime we find a smaller sum.


CONSEC_NUM_COUNT = 5

def minimum_sum(array)
  min_sum = nil

  array.each_with_index do |num, idx|
    break if array[idx, CONSEC_NUM_COUNT].size < CONSEC_NUM_COUNT
    sum = array[idx, CONSEC_NUM_COUNT].sum
    min_sum = sum if idx == 0 || sum < min_sum
  end

  min_sum
end

# Examples:

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".
