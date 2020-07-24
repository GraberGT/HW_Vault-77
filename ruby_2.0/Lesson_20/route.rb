# frozen_string_literal: true

require_relative 'station'
require_relative 'Validator'

class Route
  include Validator
  
  attr_reader :stations

  @@routes = {}

  def self.all
    @@routes
  end

  def initialize(first_station, second_station)
    @first_s = first_station
    @second_s = second_station
    @stations = [@first_s, @second_s]
    @@routes[self] = stations
    validate
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def delete_station(station)
    return 'Error' if station == @stations.first || @stations.last

    @stations.delete(station)
  end
end
