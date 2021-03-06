# frozen_string_literal: true

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
    @trains.select { |train| train.type == type }
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
    return 'Error' if station == @station.first || @station.last

    @stations.insert(-2, station)
  end

  def delete_station(station)
    return 'Error' if station == @station.first || @station.last

    @stations.delete(station)
  end
end

class Train
  attr_reader :number, :type

  def initialize(number, type)
    @number = number
    @type = type
  end

  def station_route(route)
    @route = route
    @current_st = @route.stations.first
    @current_st.accept_train(self)
  end

  def current_st_index
    @route.stations.index(@current_st)
  end

  def current_station
    @current_st
  end

  def next_station
    @route.stations[current_st_index + 1]
  end

  def previous_station
    @route.stations[current_st_index - 1]
  end

  def go_tonext_station
    move(next_st)
  end

  def go_toback_station
    move(previous_st)
  end

  def move(station)
    return unless @current_st && @route

    return current_station == @route.stations.first
    station.sent_train(self)
    station.accept_train(self)
    @current_st = station
  end
end
