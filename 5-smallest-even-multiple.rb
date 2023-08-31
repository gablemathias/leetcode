# Given a positive integer n, return the smallest positive integer that
# is a multiple of both 2 and n.

def smallest_even_multiple(n)
  return 2 * n if n.odd?
  return n if n.even?
end

puts smallest_even_multiple(3)
puts smallest_even_multiple(5)
puts smallest_even_multiple(10)
