string = ["str witcher", "str1 skyrim", "str2 wow", "str3 fallout", "str4 cyber punk 2077"]
array = [1, 2, 3, 44, 55, 666, 777, 8888, 99]

def perform(string, array)
	return puts "Give me more information!" unless block_given?
	yield(string, array)
	
end

perform(string, array) do 
	h = {}
  array.map.with_index(1) {|num, index| puts "#{index} => #{num}"}

end
	
    puts string.max