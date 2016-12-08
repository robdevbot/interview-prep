# Write code in your favorite programming language that will accept two strings and return true if they are anagrams.

def anagram?(string1, string2)
  string1.split("").sort == string2.split("").sort
end

puts anagram?("lemon","melon")
puts anagram?("mix","pad")
