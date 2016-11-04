# gotchas:
# string.len = 1 or 0
# there are no dupes
# case sensitivity
# invalid inputs


words = ["abcDeFfghijkKkkllln","abcdef",5,"j","aa","abcdd"]

def first_dupe(word)
  if word.class != String
    return "not a string"
  elsif word.length < 2
    return "too short"
  end

  word.each_char.with_index do |x,i|
    if i == word.length-1
      return "no dupes"
    elsif x.upcase == word[i+1].upcase
      return x
    end
  end

end

words.each do |word|
  p first_dupe(word)
end
