# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

# Input: string
# Output: character (1-letter string)
# Data structure: Array of characters (1-letter strings)
# Algorithm:
# Initialize a variable to keep track of the current lowest no. of occurrences (lowest_freq_count)
# Initialize a variable to keep track of the character with the current lowest no. of occurrences (least_freq_char)
# Convert the string to downcased characters (count is case-insensitive)
# Iterating over an array of characters (convert string to array first)
# => Count the number of occurrences of the character in iteration
# => If the count is the lowest thus far, we reassign lowest_freq_count to the count
# => And we also reassign least_freq_char to the char in iteration.
# Return the least_freq_char.

def least_common_char(string)
  lowest_freq_count = nil
  least_freq_char = nil

  string = string.downcase
  string.chars.each do |char|
    if lowest_freq_count == nil || string.count(char) < lowest_freq_count
      lowest_freq_count = string.count(char)
      least_freq_char = char
    end
  end

  least_freq_char
end

# Examples:

p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'

# The tests above should print "true".