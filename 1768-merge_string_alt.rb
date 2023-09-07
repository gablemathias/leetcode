# Problem
# You are given two strings word1 and word2. Merge the strings 
# by adding letters in alternating order, starting with word1. 
# If a string is longer than the other, 
# append the additional letters onto the end of the merged string.

# Time Complexity: O(N)
# Runtime: 67 ms
# Memory: 211 mb

def merge_alternately(word1, word2)
  result = ""
  
  (word1.length + word2.length).times do |i|
    result += word1[i] if word1[i]
    result += word2[i] if word2[i]
  end
  
  result
end

p merge_alternately("abcd","xyz") # apbqcd
p merge_alternately("abc","pqr") # apbqcr
p merge_alternately("ab","pqrs") # apbqrs

# Input:
# word1 - String
# word2 - String 

# Output:
# word3 - String

# Example 1:

# Input: word1 = "abc", word2 = "pqr"
# Output: "apbqcr"
# Explanation: The merged string will be merged as so:
# word1:  a   b   c
# word2:    p   q   r
# merged: a p b q c r

# Example 2:

# Input: word1 = "ab", word2 = "pqrs"
# Output: "apbqrs"
# Explanation: Notice that as word2 is longer, "rs" is appended to the end.
# word1:  a   b 
# word2:    p   q   r   s
# merged: a p b q   r   s

# Example 3:

# Input: word1 = "abcd", word2 = "pq"
# Output: "apbqcd"
# Explanation: Notice that as word1 is longer, "cd" is appended to the end.
# word1:  a   b   c   d
# word2:    p   q 
# merged: a p b q c   d

# D&A
# The merged value gets first the char of the word1 and then of the word2
# Once one word finishes its merge, append the rest of the other.

# Start a loop
# Check whats the longest word
# If word1
# While word2 has characters left
# Append the values of word1 and word2
# Once done, append the rest of the word1

# Code

# def merge_alternately(word1, word2)
#   shortest_word = word1.length <= word2.length ? word1 : word2
#   merged_word = ""
  
#   shortest_word.length.times do |i|
#     merged_word += word1[i] + word2[i]
#   end
  
#   if shortest_word == word1 && word1.length != word2.length
#     merged_word += word2[(shortest_word.length)..]
#   elsif shortest_word == word2
#     merged_word += word1[(shortest_word.length)..]
#   end
  
#   merged_word
# end 

# p merge_alternately("abcd","xyz") # apbqcd
# p merge_alternately("abc","pqr") # apbqcr
# p merge_alternately("ab","pqrs") # apbqrs

# Determine the total length of the string
# keep adding the values to the new string until the size 
# is fulfilled
# return the resulting string