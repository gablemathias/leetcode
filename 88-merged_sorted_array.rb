# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.

# given two integer arrays sorted in NON-decreasing order
# two integers representing the length of each array
# merge in sorted order the two arrays

# adjust the arrays accordingly to the length
# merge these 2 arrays


def merge(nums1, m, nums2, n)
  n1 = nums1[...m]
  n2 = nums2[...n]

  nums1 = (n1 + n2).sort
end

nums1 = [1,2,3,0,0,0]
nums2 = [2,5,6]
m = 3
n = 3

p merge(nums1, m, nums2, n)
