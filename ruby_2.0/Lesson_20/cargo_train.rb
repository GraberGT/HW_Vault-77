# frozen_string_literal: true

require_relative 'train'
require_relative 'station'
require_relative 'cargo_wagon'
require_relative 'Manufacturer'
require_relative 'InstanceCounter'
require_relative 'Validator'

class Cargo_train < Train
  include InstanceCounter
  include Manufacturer

  attr_reader :number, :amount_wagon

  def initialize(number)
    super(number)
    @amount_wagon = []
    validate
  end

  def add_wagon(wagon)
    return 'Error' if wagon.class != Cargo_wagon

    @amount_wagon << wagon
  end

  def delete_wagon(wagon)
    return 'Error' if wagon.class != Cargo_wagon

    @wagons_amount.delete(wagon)
  end
end
