string = 'ruby is awesome'

def parse_string(string)
	p string.delete(' ').chars
end

parse_string(string)