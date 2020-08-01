# frozen_string_literal: true

require_relative 'station'
require_relative 'Validator'
require_relative 'logs'

class Route
  include Validator
  include Logable

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
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def delete_station(station)
    return 'Error' if station == @stations.first || @stations.last

    @stations.delete(station)
  end

  def validate
    super(stations)
    super(name)
  rescue AttributeSizeError, AttributePresentError => e
    write_error(e.message)
    self.valid = false
  else
    self.valid = true
  end
end
