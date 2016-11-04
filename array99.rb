
#create an array missing one digit from 1-100
arr = []

i = 1

100.times do
  arr << i
  i += 1
end

arr.delete(rand(1..100))

p arr

# find it (solution 1)

# answer = 200

# i = 0

# while answer == 200
#   if arr[i] != i + 1
#     # puts "arr[i+1] is #{arr[i+1]} and (arr[i] + 1) is #{(arr[i] + 1)}"
#     answer = i + 1
#     p "The answer is #{answer}"
#   end
#   i += 1
# end




puts 5050 - arr.reduce(0, :+)

