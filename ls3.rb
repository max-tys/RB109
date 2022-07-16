# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

# Input: a string
# Output: a string (every 3rd word converted)
# Approach
# Iterate over the words of the string (convert the string to an array of words)
# Transform every third word in the array.
# Define a helper method to transform the third word.
# Helper method will split the word into its characters and transform every second char.
# Return the transformed string.

def make_weird_word(string)
  string.chars.map.with_index do |char, idx|
    idx.odd? ? char.upcase : char
  end.join
end

def to_weird_case(string)
  string.split.map.with_index do |word, idx|
    idx % 3 == 2 ? make_weird_word(word) : word
  end.join(' ')
end

# Examples:

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# The tests above should print "true".