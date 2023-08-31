a = [1,7,3,6,5,6]
b = [2,1,-1]
c = [1,2,3]
d = [-1,-1,0,0,-1,-1]

def pivot_index(nums)
  return -1 if nums.length == 0

  nums.each_with_index do |_, idx|
    return idx if nums[...idx].sum == nums[idx+1..].sum
  end
  return -1
end

puts pivot_index(a)
puts pivot_index(b)
puts pivot_index(c)
puts pivot_index(d) # 2
