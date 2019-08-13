class Station
	def initialize
		@start_station = ala
		@stop_station = asa
	end
end

class Route < Station
	def initialize(start, stop)
		@start_station
		@stop_station
	end

	def currentstation
		@start_station
		@stop_station
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