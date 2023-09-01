#### Transform the corresponding String Integer into an Integer ####
# Criterias:
# 1 - Remove any leading space
# 2 - If not the end of string, check if the first char is '-' or '+' to determine
# if the integer is positive / negative
# 3 - read the next char till end of string or next non digit
# 4 - Convert digits into integer, if no digits read the integer is 0
# 5 - ignore any character after the last digit
# 6 - Don't surpass thr 32-bit length

=begin
## Intuition
Taking an approach to solve each step and test the program I was able to identify the possible scenarios and what you can accomplish with that.

## Approach
I decided to first convert all the string and leave to check if it surpassed the 32bit length at the end.
Something to get the algorithm better is to check after each insertion, this way we can get out of the loop asap. Changing the loop structure and inserting the checking inside the iterator... this way:

s[idx..].each_char do |c|
   if c.ord.between?(('0'.ord),('9'.ord))
     result = result * 10 + (c.ord - '0'.ord)
     if result.bit_length >= 32
       if sign == 1
           return 2**31 - 1
       else
           return 2**31 * sign
       end
   end
   else
     break
   end
end
The otherside using this approach is that we check the bit length after
each iteraction. Making the program slower
=end

# Complexity
# Time complexity:
# O(N)

# Space complexity:
# O(1)

# Runtime: 65 ms
# Memory Usage: 211 MB

def my_atoi(s)
  result = 0
  idx = 0
  sign = 1

  # remove leading whitespaces
  while s[idx] == ' ' and s[idx] != nil
    idx += 1
  end

  return result if s[idx].nil?

  # check if positive or negative
  if s[idx] == '-'
    sign = -1
    idx += 1
  elsif s[idx] == '+' # ignore positive character
    idx += 1
  end

  s[idx..].each_char do |c|
    if c.ord.between?(('0'.ord),('9'.ord))
      result = result * 10 + (c.ord - '0'.ord)
        if result.bit_length >= 32
    if sign == 1
      return 2**31 - 1
    else
      return 2**31 * sign
    end
  end
    else
      break
    end
  end

  if result.bit_length >= 32 # check the length
    if sign == 1
      return 2**31 - 1
    else
      return 2**31 * sign
    end
  end

  return result * sign
end

p my_atoi('          -89345!  - - - adjshfhsa')
p my_atoi("42")
p my_atoi('89453')
p my_atoi('000089453')
p my_atoi('000089453342')
p my_atoi('-91283472332')
p my_atoi("2147483648")
