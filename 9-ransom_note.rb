# Using standard Hash Table

def can_construct(ransom_note, magazine)
  hashtable = Hash.new(0)

  magazine.each_char { |x| hashtable[x] += 1 }

  ransom_note.each_char do |c|
    if hashtable[c] >= 1
      hashtable[c] -= 1
    elsif hashtable[c] == 0
      return false
    end
  end

  return true
end

p can_construct("aa","ab")
p can_construct("aa","aab")
p can_construct("a","b")
p can_construct("aab", "baa")

# Hash using ASCII values

def can_construct_ascii(ransom_note, magazine)
  alphas = Array.new(26, 0) # english lowercase alphabet
  a_ordinal = 'a'.ord

  magazine.each_char { |c| alphas[c.ord - a_ordinal] += 1 } # increment frequency, ord return ordinal integer char

  ransom_note.each_char do |char|
    return false if alphas[char.ord - a_ordinal] == 0

    alphas[char.ord - a_ordinal] -= 1 # decrement whenever match found
  end

  return true
end

p can_construct_ascii("aa","ab")
p can_construct_ascii("aa","aab")
p can_construct_ascii("a","b")
p can_construct_ascii("aab", "baa")
