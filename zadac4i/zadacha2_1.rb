arr1 = [1, 2, 4, 5, 6, 7]

arr2 = [1, 2, 3, 4, 5, 6, 7, 8, 9]

arr1.each do |value1|
 
  arr2.include? value1 

  arr3 = []
    
  arr3 << value1

  puts arr3

  end