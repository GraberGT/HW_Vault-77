class Station
  def initialize(name)
    @name = name
  end
end

station_1 = Station.new('Ala')
station_2 = Station.new('Ast')

class Route
  def initialize(from, to)
    @from = from
    @to = to
    @stations = [@from, @to]
  end

  def stations
    @stations
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