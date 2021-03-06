# frozen_string_literal: true

require_relative 'train'
require_relative 'station'
require_relative 'cargo_wagon'

class Cargo_train < Train
  attr_reader :number, :amount_wagon

  def initialize(number)
    super(number)
    @amount_wagon = []
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
