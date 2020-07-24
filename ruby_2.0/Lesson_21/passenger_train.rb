# frozen_string_literal: true

require_relative 'station'
require_relative 'train'
require_relative 'passenger_wagon'
require_relative 'Manufacturer'
require_relative 'InstanceCounter'
require_relative 'Validator'

class Passenger_train < Train
  include InstanceCounter
  include Manufacturer
  include Validator

  attr_reader :number, :amount_wagon

  def initialize(number)
    super(number)
    @amount_wagon = []
    validate
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
