# Given an integer num, return the number of steps to reduce it to zero.
# In one step, if the current number is even, you have to divide it by 2,
# otherwise, you have to subtract 1 from it.

# Test-case inputs
input_1 = 14
input_2 = 8
input_3 = 123

# Count Steps
# If even divide by 2
# if odd subtract by 1

# Time: 3min30sec
# Runtime: 143 ms, faster than 42.19% of Ruby online submissions for Number of Steps to Reduce a Number to Zero.
# Memory Usage: 211 MB, less than 76.56% of Ruby online submissions for Number of Steps to Reduce a Number to Zero.

def number_of_steps(num)
  counter = 0
  until num == 0
    (num%2) == 0 ? num /= 2 : num -= 1
    counter += 1
  end
  counter
end

number_of_steps(input_1)
number_of_steps(input_2)
number_of_steps(input_3)
