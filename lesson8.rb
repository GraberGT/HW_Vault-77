class Array
	def square
	self.map { |n| n << 2 }
	end

    def average
    	self.each { |n| return 0 if n.class != String }
    	self.sum / self.size
    end

    def even_odd
    	self.partition { |n| i[0].zero? }
    end

    def reverse_strings
    	self.each { |n| puts n.reverse }
    	
    end


end

