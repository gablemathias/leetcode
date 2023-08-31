# You are given an m x n integer grid accounts where accounts[i][j] is the amount of
# money the i​​​​​​​​​​​th​​​​ customer has in the j​​​​​​​​​​​th​​​​ bank. Return the wealth that the richest customer has.

# testcase
fortunes_1 = [[1,2,3],[3,2,1]]             # 6
fortunes_2 = [[1,5],[7,3],[3,5]]           # 10
fortunes_3 = [[2,8,7],[7,1,3],[1,9,5]]     # 17

# take the array, sum what's inside each array-item and return the highest array-item

# First try
# Time to develop: 15 min.
# Runtime: 131 ms, faster than 62.63% of Ruby online submissions for Richest Customer Wealth.
# Memory Usage: 211.4 MB, less than 15.26% of Ruby online submissions for Richest Customer Wealth.


def maximum_wealth(accounts)
  accounts.map! do |item| # item is an array
    item.sum
  end
  accounts.sort.last
end

# Second try
# Time to develop: 1min30sec
# Runtime: 71 ms, faster than 98.95% of Ruby online submissions for Richest Customer Wealth.
# Memory Usage: 211.1 MB, less than 98.95% of Ruby online submissions for Richest Customer Wealth.

def maximum_wealth(accounts)
  accounts.map!(&:sum).max
end

p maximum_wealth(fortunes_1)
p maximum_wealth(fortunes_2)
p maximum_wealth(fortunes_3)
