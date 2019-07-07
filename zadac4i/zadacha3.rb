arr1 = [1, 1, 2, 2, 2, 4, 5, 6, 6, 6, 7]

def group_and_count(arr1)

    x = arr1.inject(Hash.new(0)) { |h, e| h[e] += 1 ; h }

    puts x

end

group_and_count(arr1)