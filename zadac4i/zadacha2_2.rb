arr1 = [1, 2, 4, 5, 6, 7]

arr2 = [1, 2, 3, 4, 5, 6, 7, 8, 9]

def remove_duplicate(arr1, arr2)

uniques = (arr2 - arr1)
duplicates = (arr2 - arr1)

puts uniques
puts duplicates

end

remove_duplicate(arr1)
