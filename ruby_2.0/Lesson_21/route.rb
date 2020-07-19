# frozen_string_literal: true

require_relative 'instance_counter.rb'

class Route
  include InstanceCounter

  attr_accessor :stations, :route_name

  def initialize(first_station, final_station, route_name)
    @route_name = route_name
    validate!
    @stations = [first_station, final_station]
    register_instance
  end

  def station_add(station)
    @stations.insert(-2, station)
  end

  def station_delete(station)
    @stations.delete(station)
  end

  def valid?
    validate!
    true
  rescue false
  end

  protected

  def validate!
    raise 'Length route name < 3' if route_name.length < 3
  end
end

# train_lambda = lambda{ |train| p "#{train.number} => #{train}" }
# my_proc = Proc.new{ |train| p "#{train.number} => #{train}" }
# #a.block_test("STRING", &my_proc)
# a.block_test(&my_proc)
# #a.block_test { |train| p "astaala" }