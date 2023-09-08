# Runtime 111ms Memory 213.15mb
# The idea was based on the substitution created with the method gsub
# using the greatest substring extracted from the str2

# run rspec with the provided code to check the test.
# if not installed, run gem install rspec before executing the command.


# Problem
# For two strings s and t, we say "t divides s" if 
# and only if s = t + ... + t (i.e., t is concatenated with itself one or more times).

# Given two strings str1 and str2, return the largest string 
# x such that x divides both str1 and str2.

def gcd_of_strings(str1, str2)
    cnt = -1
    str2.length.times do
      substring = str2[..cnt]
            
      if str1.gsub(substring, "").empty? && str2.gsub(substring, "").empty?
       return substring
      end
      cnt -= 1
    end
    ""
end

# Test-Case

RSpec.describe 'largest string X derived from str2 that' do
  it 'divides both str1 and str2' do
    expect(gcd_of_strings("ABCABC","ABC")).to eq("ABC")
    expect(gcd_of_strings("ABABAB","ABAB")).to eq("AB")
    expect(gcd_of_strings("LEET","CODE")).to eq("")
    expect(gcd_of_strings("ABABABAB","ABAB")).to eq("ABAB")
  end
end

