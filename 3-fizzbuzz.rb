# Given an integer n, return a string array answer (1-indexed) where:

# answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
# answer[i] == "Fizz" if i is divisible by 3.
# answer[i] == "Buzz" if i is divisible by 5.
# answer[i] == i (as a string) if none of the above conditions are true.

# Example 1:

# Input: n = 3
# Output: ["1","2","Fizz"]

# Test-case
input_1 = 3
input_2 = 5
input_3 = 15

# First try
# Time to develop: 4min.
# Runtime: 186 ms, faster than 47.04% of Ruby online submissions for Fizz Buzz.
# Memory Usage: 214 MB, less than 72.70% of Ruby online submissions for Fizz Buzz.

def fizz_buzz(n)
  new_array = []
  (1..n).each do |num|
    if (num % 3 == 0) && (num % 5 == 0)
      new_array << "FizzBuzz"
    elsif num % 3 == 0
      new_array << "Fizz"
    elsif num % 5 == 0
      new_array << "Buzz"
    else
      new_array << num.to_s
    end
   end
   new_array
end

# re-write with next argument and a better approach
# Second try
# Time to develop: 2min.
# Runtime: 100 ms, faster than 98.03% of Ruby online submissions for Fizz Buzz.
# Memory Usage: 214.3 MB, less than 33.22% of Ruby online submissions for Fizz Buzz.
# Took less lines of code, faster, but alocates a little more memory

def fizz_buzz(n)
  (1..n).map do |num|
    next 'FizzBuzz' if num%15 == 0
    next 'Fizz' if (num%3).zero?
    next 'Buzz' if (num%5).zero?
    num.to_s
  end
end

p fizz_buzz(input_1)
p fizz_buzz(input_2)
p fizz_buzz(input_3)
