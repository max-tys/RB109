# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

# Input: an array of integers
# Output: a sub-array of integers
# Data structure: arrays
# Approach:
# Initialize an empty output array.
# Initialize a variable to keep track of the current smallest difference.
# Iterate over the input array
# => Compare the number in iteration with each number in the rest of the array.
# => Find out the difference between the numbers.
# => If the difference is by far the smallest, we store the pair of numbers in a sub-array
# => If the difference is greater than that in the sub-array, we move on to the next pair (do nothing)
# Return the output array.

def closest_numbers(array)
  output = []
  difference = nil

  array.each_with_index do |num1, idx|
    remaining_nums = array[(idx + 1)..-1]
    remaining_nums.each do |num2|
      if difference == nil || (num1 - num2).abs < difference
        difference = (num1 - num2).abs
        output = [num1, num2]
      end
    end
  end

  output
end


# Examples:

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".