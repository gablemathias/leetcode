array_1 = [1, 3, 4, 7, 10, 11] # [1, 4, 8, 15, 25, 36]
array_2 = [1,2,3,4]            # [1, 3, 6, 10]
array_3 = [1,1,1,1,1]          # [1, 2, 3, 4, 5]
array_4 = [3,1,2,10,1]         # [3, 4, 6, 16, 17]

#return the running sums of the array
#example => [1, 4, 8, 15, 25]
# the next item of the array is the value plus the before value

# Runtime: 72 ms, faster than 98.91% of Ruby online submissions for Running Sum of 1d Array.
# Memory Usage: 211.3 MB, less than 16.02% of Ruby online submissions for Running Sum of 1d Array.

def running_sum (nums)
  new_array = []
  new_array << nums.shift
  nums.each do |item|
    new_array << item + new_array.last
  end
  new_array
end

p running_sum(array_1)
p running_sum(array_2)
p running_sum(array_3)
p running_sum(array_4)
