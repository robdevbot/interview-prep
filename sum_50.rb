# Given a set of numbers -50 to 50, find all pairs that add up to a certain sum that is passed in. What's the O notation for what you just wrote? Can you make it faster? Can you find an O(n) solution? Implement the O(n) solution


# def sum_5(integer)
#   array_pairs = []
#   array = (-50..50).to_a

#   array.each do |num|
#     array.each do |num2|
#       if num + num2 == integer
#         array_pairs << [num, num2]
#       end
#     end
#   end

#   array_pairs
# end

# # p sum_5(15)
# p sum_5(95)


def sum_50(integer)
  array_pairs = []
  array = (-50..50).to_a

  if integer > 99 || integer < -99

    return []

  elsif integer >= -50 && integer <= 50

    if integer < 0
      num1 = integer

      while num1 >= -50
        array_pairs << [num1, integer-num1]
        num1 -= 1
      end

    elsif integer > 0
      num1 = integer

      while num1 <= 50
        array_pairs << [num1, integer-num1]
        num1 += 1
      end
    else # when zero
      return [[50, -50], [49, -49], [48, -48], [47, -47], [46, -46], [45, -45], [44, -44], [43, -43], [42, -42], [41, -41], [40, -40], [39, -39], [38, -38], [37, -37], [36, -36], [35, -35], [34, -34], [33, -33], [32, -32], [31, -31], [30, -30], [29, -29], [28, -28], [27, -27], [26, -26], [25, -25], [24, -24], [23, -23], [22, -22], [21, -21], [20, -20], [19, -19], [18, -18], [17, -17], [16, -16], [15, -15], [14, -14], [13, -13], [12, -12], [11, -11], [10, -10], [9, -9], [8, -8], [7, -7], [6, -6], [5, -5], [4, -4], [3, -3], [2, -2], [1, -1]]
    end

  else
    if integer > 0
      low_number = integer - 50
      subset_array = array[array.find_index(low_number)..100]

      while(subset_array.length >1)
        array_pairs << [subset_array.pop, subset_array.shift]
      end

    else
      high_number = integer + 50

      subset_array = array[0..array.find_index(high_number)]

      while(subset_array.length >1)
        array_pairs << [subset_array.pop, subset_array.shift]
      end

    end

  end

  array_pairs
end

# p sum_5(15)
# p sum_50(0)
