## Problem
# Given a 0-indexed string ~s~, and a dictionary of words (array) ~dictionary~
# break ~s~ into one or more NON-OVERLAPPING substrings such that each substring
# is present in dictionary.
# There may be some EXTRA CHARACTERS which are not present in any of the substrings
# Return the MINIMUM number of extra characters left

## Input:
# String -> s
# Array -> dictionary

## Output:
# String -> Minimum Extra Characters left over after breaking S optimally

# Examples:

# 1
# Input:
# s = "leetscode"
# dictionary = ["leet","code","leetcode"]
# Output:
# 1 (left over: "s")

# 2
# Input:
# s = "sayhelloworld"
# dictionary = ["hello", "world"]
# Output:
# 3

# 3
# Input:
# s = "something"
# dictionary = ["rain", "some", "something"]
# Output:
# 0

# 4
# Input
# s = "rainaaarain"
# dictionary = ["this","rain"]
# Output:
# 3

# Data Structure
# Integer to count the extra characters after breaking into one or more substrings

# methods that can be used
# sub (returns a copy replacing the value found first)
# gsub (returns a copu replacing all the values found)

# Algorithm
=begin


=end
