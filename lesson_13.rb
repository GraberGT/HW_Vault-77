class Station
  attr_reader :name
  attr_reader :trains

  def initialize(name)
    @name = name
    @trains = []
  end

  def accept_train(train)
    @trains << train
  end

  def trains_type(type)
    @trains.select{|train| train.type == type}
  end

  def send_train(train)
    @trains.delete(train)
  end
end

class Route
  attr_reader :stations

  def initialize(first_station, second_station)
    @first_s = first_station
    @second_s = second_station
    @stations = [@first_s, @second_s]
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def delete_station(station)
    return "Error" if station == @stations.first || @stations.last
    @stations.delete(station)
  end
end

class PassangerWagon
   def initialize(pass_seats)
     @pass_seats = pass_seats
     @type = 'PassengerTrain'
   end
end

class CargoWagon
  def initialize(volume)
    @volume = volume
    @type = 'CargoTrain'
  end
end

class Train
  attr_reader :number, :type

  def initialize(number, type)
    @number = number
    @type = type
    @quantity_wagon = []
  end

  def station_route(route)
    @route = route
    @current_station = @route.stations.first
    @current_station.accept_train(self)
  end

  def add_wagon(wagon)
    return "Error" if wagon.type != @type
    @amount_wagon << wagon
  end

  def current_station
    @current_station
  end

  def next_station
    @route.stations[current_station_index + 1]
  end

  def previous_station
     @route.stations[current_station_index - 1]
  end

  def go_tonext_station
    return if @current_station == @route.stations.last
    move(next_station)
  end

  def go_toback_station
    return if @current_station == @route.stations.first
    move(previous_station)
  end

  def current_station_index
    @route.stations.index(@current_station)
  end

    def move(station)
    return unless @current_station && @route
    @current_station.send_train(self)
    @current_station = station
    @current_station.accept_train(self)
  end

