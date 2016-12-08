# In a given sorted array of integers remove all the duplicates.


def array_duplicates(array)

  non_dupes = []

  array.each_with_index do |item, index|
    if item != array[index + 1]
      non_dupes << item
    end
  end

  non_dupes
end


p array_duplicates([1, 2, 3, 4, 5, 6, 6, 7])
p array_duplicates([1, 2, 2, 2, 2, 2])
