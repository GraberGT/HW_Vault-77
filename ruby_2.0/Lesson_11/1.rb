# frozen_string_literal: true

class Station
  def initialize(name)
    @name = name
  end
end

class Route
  def initialize(from, to)
    @from = from
    @to = to
    @stations = [@from, @to]
  end

  attr_reader :stations
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

  attr_reader :speed

  def stop_train
    @speed = 0
  end

  attr_reader :wagons_amount

  def add_wagon
    @wagons_amount += 1 if @speed == 0
  end

  def delete_wagon
    @wagons_amount -= 1 if @speed == 0
  end
end
