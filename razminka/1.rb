arr1 = [1, 2, 3, 4, 5, 6, 7, 8]

def editarr(arr1)
	arr2 = []
	arr1.map { |n| arr2 << n if arr1.index(n).even? }
	p arr2
end

editarr(arr1)