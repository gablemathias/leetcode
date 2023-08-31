def running_sum(arr)
  new_arr = []
  arr.each_with_index do |n, idx|
    new_arr << n += arr[...idx].sum
  end
  new_arr
end
