def remove_adjacent_duplicates(s)
  new_s = s.gsub(/(.)\1/, '')
  return s if new_s == s
  return remove_adjacent_duplicates(new_s)
end
