class Station
  attr_reader :name
  attr_reader :trains

  def initialize(name)
    @name = name
    @trains = []
  end

  def join_train(train)
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
    return "Error" if station == @station.first || @station.last
    @stations.insert(-2, station)
  end

  def delete_station(station)
    return "Error" if station == @station.first || @station.last
    @stations.delete(station)
  end
end

class Train
  def initialize(number, type)
    @number = number
    @type_train = type
    @speed = 0
    @wagons_amount = 0
  end

  def go_speed
    @speed += 10
  end

  def speed
    @speed
  end

  def stop_train
    @speed = 0
  end

  def wagons_amount
    @wagons_amount
  end

  def add_wagon
    @wagons_amount += 1 if @speed == 0
  end

  def delete_wagon
    @wagons_amount -= 1 if @speed == 0
  end
end