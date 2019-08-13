class Station
     	@@Station = ala
	def initialize(from, to)
		@from = from
		@to = to
	end
end

station = Station.new('ala', 'asa')

class Route < Station
	def initialize(from, to)
		@from
		@to                                                                                                                          
	end
 
	def currentstation
		@from
		@to
	end

end

class Train 
	def initialize
		@number = rand(1..100).to_i               
		@typetrain = pass || gruz                                                                                      
		@speed = 0                                                              
		@wagon = 0
	end

	def gospeed
		@speed = 10
	end

	def currentspeed
		@speed
	end

	def usebrake
		@speed = 0
	end

	def wagonquantity
		@wagon
	end

	def addorremovewagon
		@wagon + 1 || @wagon - 1  if @speed = 0
	end
	end

end

	def wagonquantity
		@wagon
	end

	def addorremovewagon
		@wagon + 1 || @wagon - 1  if @speed = 0
	end
	end

end
