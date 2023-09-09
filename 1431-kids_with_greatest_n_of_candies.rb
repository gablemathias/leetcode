# Problem
# Return a boolean of length n (same length as the providen array), where
# the returning values are boolean. if result[index] after adding candies
# Are greater than the other values (without adding it), they're true
# else, they're false

# Inputs
# @param {Integer[]} candies
# @param {Integer} extra_candies

# Output
# @return {Boolean[]}

# Examples
# Input: candies = [2,3,5,1,3], extraCandies = 3
# Output: [true,true,true,false,true] result[3] equals 4 after adding the extra
# candies, so its lesser than the index with 5 candies.

# D&A
# Approach:
# Find the greatest value inside the array
# Check if each item is GREATER or EQUAL than this value after adding the extra candies
# unless it is, append as false, else as true.

# Algorithm
# 1. Declare an empty instance variable of array (called result) (Use map method instead)
# 2. Declare an "zero" instance variable of integer (called max)
# 3. Loop through the array of integers to find the greatest value inside it
# append the given value to the instance of integer
# 4. Loop through the array of integers checking if the value PLUS the extra candies
# are greater or equal the max variable.
# -> if it's, true. else false.
# 5. return the resulting boolean array

# Time Complexity: O(N), Space Complexity O(1)
# Runtime 58ms, Memory: 211.23mb

def kids_with_candies(candies, extra_candies)
  max = 0 # Instead of the each, we can also use the MAX method to find it.

  candies.each do |v|
    if v > max
      max = v
    end
  end

  candies.map { |target| target+extra_candies >= max } # create a boolean array
end

# Test-cases

RSpec.describe 'Check kids with the greatest number of candies' do
  it 'It has more candies than the others after receiving the extra candies' do
    expect(kids_with_candies([2,3,5,1,3], 3)).to eq([true,true,true,false,true])
  end

  it 'Has the same number of candies as the greatest one' do
    expect(kids_with_candies([1,8], 7)).to eq([true,true])
  end

  it 'Doens\'t has sufficient candies as the greatest one' do
    expect(kids_with_candies([4,2,1,1,2], 1)).to eq([true,false,false,false,false])
  end
end
