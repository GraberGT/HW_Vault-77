# frozen_string_literal: true

require_relative 'station'
require_relative 'train'
require_relative 'passenger_wagon'

class Passenger_train < Train
  include InstanceCounter
  include Manufacturer

  attr_reader :number, :amount_wagon

  def initialize(number)
    super(number)
    @amount_wagon = []
  end

  def add_wagon(wagon)
    return 'Error' if wagon.class != Passenger_Wagon

    @amount_wagon << wagon
  end

  def delete_wagon(wagon)
    return 'Error' if wagon.class != Passenger_Wagon

    @wagons_amount.delete(wagon)
  end
end
