hash1 = { ruby: 1, python: 2, java: 3 }

def double_hash(hash1)
	arr1 = []
	arr2 = []
	arr3 = []
	hash1.map { |key, value| arr1 << key; arr2 << value }
	arr3 = [arr1, arr2]
	p arr3
end

double_hash(hash1)